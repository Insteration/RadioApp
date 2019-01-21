//
//  RadioViewController.swift
//  RadioApp
//
//  Created by Artem Karmaz on 1/18/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class RadioPlayerViewController: UIViewController {
    
    var radio = RadioModel()
    var radioMinorSettings: RadioMinorSettings?
    var mediaItems = MediaItem()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch radioMinorSettings?.numberOfRadioStation {
        case 0:
            self.radioNameNavigationItem.title = radio.ukraineRadio[0]
        case 1:
            self.radioNameNavigationItem.title = radio.ukraineRadio[1]
        case 2:
            self.radioNameNavigationItem.title = radio.ukraineRadio[2]
        case 3:
            self.radioNameNavigationItem.title = radio.ukraineRadio[3]
        case 4:
            self.radioNameNavigationItem.title = radio.ukraineRadio[4]
        default:
            ()
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var radioNameNavigationItem: UINavigationItem!
    @IBOutlet weak var songNameLabel: UILabel!
    
    @IBAction func backToRadioList(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        print(mediaItems.parseM3U(contentsOfFile: radio.testString)!)
        
        switch radioMinorSettings?.numberOfRadioStation {
        case 0:
            radio.playRadio(radio.informatorFM)
        case 1:
            radio.playRadio(radio.kissFM)
        case 2:
            radio.playRadio(radio.luxFM)
        case 3:
            radio.playRadio(radio.hitFM)
        case 4:
            radio.playRadio(radio.shansonFM)
        default:
            ()
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [.mixWithOthers, .allowAirPlay])
            print("Playback OK")
            try AVAudioSession.sharedInstance().setActive(true)
            print("Session is Active")
        } catch {
            print(error)
        }
        
    }
    @IBAction func pauseButton(_ sender: UIButton) {
        
        print(radioMinorSettings?.numberOfRadioStation)
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        
        switch radioMinorSettings?.numberOfRadioStation {
        case 0:
            radio.stopRadio(radio.informatorFM)
        case 1:
            radio.stopRadio(radio.kissFM)
        case 2:
            radio.stopRadio(radio.luxFM)
        case 3:
            radio.stopRadio(radio.hitFM)
        case 4:
            radio.stopRadio(radio.shansonFM)
        default:
            ()
        }
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
