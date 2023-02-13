//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Abilmansur Ashim on 13.02.2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    
    let video: Video
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: video.id, fileFormat: "mp4")) {
//                Text(video.name)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        } //: VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(video.name, displayMode: .inline)
    }
}

// MARK: - PREVIEW

struct VideoPlayerView_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        NavigationView {
            VideoPlayerView(video: videos[0])
        }
    }
}
