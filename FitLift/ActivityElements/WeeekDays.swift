//
//  WeeekDays.swift
//  FitLift
//
//  Created by Catherine on 09/04/2022.
//

import SwiftUI

struct WeeekDays: View {
    var body: some View {
        HStack{
        Text("Mon")
        Text("Tue")
        Text("Wed")
        Text("Thr")
                .foregroundColor(Color.white)
                .frame(width: 45.0, height: 70.0)
                .background(Color(red: 0.41568627450980394, green: 0.4, blue: 0.7803921568627451))
                .cornerRadius(10)
        Text("Fri")
        Text("Sat")
        Text("Sun")
        }            .foregroundColor(Color(red: 0.4980392156862745, green: 0.4980392156862745, blue: 0.4980392156862745))
            .font(.system(size: 26))
            .frame(width: 400.0, height: 63.0)
    }
}

struct WeeekDays_Previews: PreviewProvider {
    static var previews: some View {
        WeeekDays()
    }
}
