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

class RadioViewController: UIViewController {
    
    
    let player = AVPlayer(url: URL(string: "http://media.fregat.com:8000/RadioMIX.m3u")!)
//    let vcc = AVPlayerItem(asset: <#T##AVAsset#>)
    let vc = AVPlayerViewController()
//    vc.player = player
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func playButton(_ sender: UIButton) {
        player.play()
//        self.vc.player = player
//
//        present(vc, animated: true) {
//            self.vc.player?.play()
//        }
        
    }
    
    
    @IBAction func stopButton(_ sender: UIButton) {
        player.pause()
        
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
