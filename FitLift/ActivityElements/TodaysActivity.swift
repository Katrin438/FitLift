//
//  TodaysActivity.swift
//  FitLift
//
//  Created by Catherine on 09/04/2022.
//

import SwiftUI

struct TodaysActivity: View {
    var body: some View {
        VStack (alignment: .leading){
        Text("Today's activity")
                .font(.system(size: 25))
        Image("kkk")
                .padding(.leading, 10.0)
        Text("Push-Up")
            .font(.system(size: 20))
            .padding(.leading, 10.0)
        Image("kkkkk")
                .padding(.leading, 10.0)
        Text("Squats")
                .font(.system(size: 20))
                .padding(.leading, 10.0)
        Image("oi")
                .padding(.leading, 10.0)
            Text("Sumo Squat")
                .padding(.leading, 10.0)
                .font(.system(size: 20))
        }
    }
}

struct TodaysActivity_Previews: PreviewProvider {
    static var previews: some View {
        TodaysActivity()
    }
}
