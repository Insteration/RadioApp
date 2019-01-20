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
    
//    let radio = Radio()
    
    
    let informatorFM = AVPlayer(url: URL(string: "http://media.fregat.com:8000/RadioMIX.m3u")!)
    let kissFM = AVPlayer(url: URL(string: "https://www.kissfm.ua/KissFM.m3u")!)
    let luxFM = AVPlayer(url: URL(string: "http://lux.fm/resources/file/music/lux.m3u")!)
    
//    let vcc = AVPlayerItem(asset: <#T##AVAsset#>)
    let vc = AVPlayerViewController()
//    vc.player = player
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToRadioList(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        informatorFM.play()
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [.mixWithOthers, .allowAirPlay])
            print("Playback OK")
            try AVAudioSession.sharedInstance().setActive(true)
            print("Session is Active")
        } catch {
            print(error)
        }
        
//        self.vc.player = player
//
//        present(vc, animated: true) {
//            self.vc.player?.play()
//        }
        
    }
    
    
    @IBAction func stopButton(_ sender: UIButton) {
        informatorFM.pause()
        
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
