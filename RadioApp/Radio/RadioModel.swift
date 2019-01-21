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
    var ukraineRadio: [String] {get set}
    func playRadio(_ nameRadioStation: AVPlayer)
    func stopRadio(_ nameRadioStation: AVPlayer)
}


class RadioModel: Radio {
    
    internal var ukraineRadio = ["Informator FM", "Kiss FM", "Lux FM", "Hit FM", "Shanson FM"]
    private let informatorFM = AVPlayer(url: URL(string: "http://media.fregat.com:8000/RadioMIX.m3u")!)
    private let kissFM = AVPlayer(url: URL(string: "https://www.kissfm.ua/KissFM.m3u")!)
    private let luxFM = AVPlayer(url: URL(string: "http://lux.fm/resources/file/music/lux.m3u")!)
    private let hitFM = AVPlayer(url: URL(string: "https://www.hitfm.ua/HitFM.m3u")!)
    private let shansonFM = AVPlayer(url: URL(string: "http://media2.brg.ua:8000/shanson_h.m3u")!)
    
    
    
    
    //     luxFM.play()
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
//class parser {
//
//    if var path = Bundle.main.path(forResource: "tvhd", ofType: "m3u"), var content = try? String(contentsOfFile: path, encoding: NSUTF8StringEncoding) {
//        let lines = content.componentsSeparatedByCharactersInSet(.newlineCharacterSet())
//        
//        var streams = [String: NSURL]()
//        var streamName: String?
//        for line in lines {
//            if line.containsString("#") {
//                if let match = line.rangeOfString("^#EXTINF:-1,", options: .RegularExpressionSearch) {
//                    streamName = line.substringWithRange(Range<String.Index>(start: match.endIndex, end: line.endIndex))
//                }
//            } else if !line.isEmpty {
//                if
//                    let _streamName = streamName,
//                    let url = NSURL(string: line)
//                {
//                    streams[_streamName] = url
//                }
//            }
//        }
//        return streams
//    } else {
//    return nil
//    }
//}
