//
//  TabBar.swift
//  FitLift
//
//  Created by Catherine on 08/04/2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Label("Home",systemImage: "house.fill")
                }
            ActivityView()
                .tabItem{
                    Label("Activity",systemImage: "waveform.path.ecg")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
