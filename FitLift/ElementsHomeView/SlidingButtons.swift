//
//  SlidingButtons.swift
//  FitLift
//
//  Created by Catherine on 07/04/2022.
//

import SwiftUI

struct SlidingButtons: View {
    
    var body: some View {
        ScrollView(.horizontal) {
            
            HStack{
            Button("All") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.system(size: 22))
            .foregroundColor(Color.white)
            .frame(width: 60.0, height: 50.0)
            .background(Color(red: 0.41568627450980394, green: 0.4, blue: 0.7803921568627451))
            .cornerRadius(20)
            Button("Squat") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.system(size: 20))
            .foregroundColor(Color.black)
            .frame(width: 120.0, height: 50.0)
            .background(Capsule().stroke().foregroundColor(.secondary))
            Button("Push-up") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.system(size: 20))
            .foregroundColor(Color.black)
            .frame(width: 120.0, height: 50.0)
            .background(Capsule().stroke().foregroundColor(.secondary))
            Button("Plank") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.system(size: 20))
            .foregroundColor(Color.black)
            .frame(width: 120.0, height: 50.0)
            .background(Capsule().stroke().foregroundColor(.secondary))
            }
            .frame(width: 475.0, height: 55.0)
        }
    }
}

struct SlidingButtons_Previews: PreviewProvider {
    static var previews: some View {
        SlidingButtons()
    }
}
