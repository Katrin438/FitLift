//
//  Stats.swift
//  FitLift
//
//  Created by Catherine on 09/04/2022.
//

import SwiftUI

struct Stats: View {
    var body: some View {
        VStack{
        HStack{
            VStack{
            Image("heart")
        Text("120 BPM")
            }.padding()
            VStack{
            Image("BloodOxygen")
        Text("95 Per")
            }.padding()
            VStack{
            Image("energy")
        Text("72 Kcal")
            }.padding()
        }
    }                .frame(width: 330.0,height: 120)
            .background(Color(red: 0.8666666666666667, green: 0.8862745098039215, blue: 0.9176470588235294))
            .cornerRadius(10)
    }
}

struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
    }
}
