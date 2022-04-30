//
//  GamePlayView.swift
//  FitLift
//
//  Created by Catherine on 11/04/2022.
//

import SwiftUI
import AVKit


struct GamePlayView: View {

    var body: some View {
        
        VideoGame ( videoID:"https://youtube.com/shorts/k-KHyqFKYGc")
            .edgesIgnoringSafeArea(.all)
        
}

struct GamePlayView_Previews: PreviewProvider {
    static var previews: some View {
        GamePlayView()
    }
}
}
