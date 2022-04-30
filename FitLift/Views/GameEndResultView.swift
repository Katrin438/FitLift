//
//  GameEndResultView.swift
//  FitLift
//
//  Created by Catherine on 09/04/2022.
//

import SwiftUI

struct GameEndResultView: View {
    var body: some View {
        HStack{
        VStack{
        Text("Accuracy")
            .font(.system(size: 35))
        Text("7/10")
            .font(.system(size: 30))
            .padding(1)
            Image("kjk")
                .padding(23)
            Text("Good Job!")
                .font(.system(size: 30))
                .padding()
            Stats()
            Spacer()
                .navigationBarHidden(true)
        }.padding()
                .navigationBarHidden(true)
            
        }.padding(.bottom, 70.0).navigationBarHidden(true)
    }
}

struct GameEndResultView_Previews: PreviewProvider {
    static var previews: some View {
        GameEndResultView()
    }
}
