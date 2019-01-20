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


class Radio {
    
    let informatorFM = AVPlayer(url: URL(string: "http://media.fregat.com:8000/RadioMIX.m3u")!)
    let kissFM = AVPlayer(url: URL(string: "https://www.kissfm.ua/KissFM.m3u")!)
    let luxFM = AVPlayer(url: URL(string: "http://lux.fm/resources/file/music/lux.m3u")!)
    let shansonFM = AVPlayer(url: URL(string: "http://media2.brg.ua:8000/shanson_h.m3u")!)
    
    let ukraineRadio = ["Informator FM", "Kiss FM", "Lux FM", "Hit FM", "Shanson FM"]
    

}
