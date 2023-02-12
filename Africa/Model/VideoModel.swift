//
//  VideoModel.swift
//  Africa
//
//  Created by Abilmansur Ashim on 12.02.2023.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    
    var thumbnail: String {
        "video-\(id)"
    }
}
