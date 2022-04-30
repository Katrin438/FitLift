//
//  VideoView.swift
//  FitLift
//
//  Created by Catherine on 14/03/2022.
//

import SwiftUI
import AVKit

struct VideoView1: View {
    
    //video shows what we intended the app to look like when you start the game
    var body: some View {
        VStack{
        VideoView (videoID: "https://youtube.com/shorts/k-KHyqFKYGc")
                   .edgesIgnoringSafeArea(.all)
        }
    }
       
}

struct VideoView1_Previews: PreviewProvider {
    static var previews: some View {
        VideoView1()
//.previewInterfaceOrientation(.portrait)
    }
}
