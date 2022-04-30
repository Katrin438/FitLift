//
//  textgame.swift
//  FitLift
//
//  Created by Catherine on 09/04/2022.
//

import SwiftUI

struct textgame: View {
    var body: some View {
        HStack{
        Text("Push-Up")
            .font(.title)
            .fontWeight(.bold)
            .padding(.top, -20)
        }
        .padding(.leading, 50)
    }
}

struct textgame_Previews: PreviewProvider {
    static var previews: some View {
        textgame()
    }
}
