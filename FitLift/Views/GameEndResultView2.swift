//
//  GameEndResultView2.swift
//  FitLift
//
//  Created by Catherine on 13/04/2022.
//

import SwiftUI

struct GameEndResultView2: View {
    var body: some View {
        HStack{
        VStack{
        Text("Accuracy")
            .font(.system(size: 35))
        Text("8/10")
            .font(.system(size: 30))
            .padding(1)
            Image("pipi")
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

struct GameEndResultView2_Previews: PreviewProvider {
    static var previews: some View {
        GameEndResultView2()
    }
}
