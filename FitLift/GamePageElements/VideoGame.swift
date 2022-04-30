//
//  VideoGame.swift
//  FitLift
//
//  Created by Catherine on 11/04/2022.
//

import SwiftUI
import WebKit

    struct VideoView: UIViewRepresentable{
        
    let videoID: String
    
        func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "\(videoID)") else {return}
    uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
        }
}

