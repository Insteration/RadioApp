//
//  RadioModel.swift
//  RadioApp
//
//  Created by Artem Karmaz on 1/19/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import Foundation
import AVKit
import AVFoundation


protocol Radio {
    func playRadio(_ nameRadioStation: AVPlayer)
    func stopRadio(_ nameRadioStation: AVPlayer)
}


class RadioModel: Radio {
    
    let testString = "https://www.kissfm.ua/KissFM.m3u"
    let ukraineRadio = ["Informator FM", "Kiss FM", "Lux FM", "Hit FM", "Shanson FM"]
    let informatorFM = AVPlayer(url: URL(string: "http://media.fregat.com:8000/RadioMIX.m3u")!)
    let kissFM = AVPlayer(url: URL(string: "https://www.kissfm.ua/KissFM.m3u")!)
    let luxFM = AVPlayer(url: URL(string: "http://lux.fm/resources/file/music/lux.m3u")!)
    let hitFM = AVPlayer(url: URL(string: "https://www.hitfm.ua/HitFM.m3u")!)
    let shansonFM = AVPlayer(url: URL(string: "http://media2.brg.ua:8000/shanson_h.m3u")!)
    
    private let playerVC = AVPlayerViewController()
    
    func playRadio(_ nameRadioStation: AVPlayer) {
        nameRadioStation.play()
    }
    
    func stopRadio(_ nameRadioStation: AVPlayer) {
        nameRadioStation.pause()
    }
    
}

class RadioMinorSettings {
    
    var numberOfRadioStation = 0
}



struct MediaItem {
    var duration: Int?
    var title: String?
    var urlString: String?
    
    func parseM3U(contentsOfFile: String) -> [MediaItem]? {
        var mediaItems = [MediaItem]()
        contentsOfFile.enumerateLines (invoking: { line, stop in if line.hasPrefix("#EXTINF:") {
            let infoLine = line.replacingOccurrences(of: "#EXTINF:", with: "")
            let infos = Array(infoLine.components(separatedBy: ","))
            if let durationString = infos.first, let duration = Int(durationString) {
                let mediaItem   = MediaItem(duration: duration, title: infos.last, urlString: nil)
                mediaItems.append(mediaItem)
            }
        } else {
            if mediaItems.count > 0 {
                var item = mediaItems.last
                item?.urlString = line
            }
            }
        })
        
        
        return mediaItems
    }
    
}

//if let path = NSBundle.mainBundle().pathForResource("playlist", ofType: "m3u"),
//    contentsOfFile = try? String(contentsOfFile: path, encoding: NSUTF8StringEncoding) {
//    MediaItem.parseM3U(contentsOfFile)
//}
