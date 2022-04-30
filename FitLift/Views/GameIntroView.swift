//
//  GameIntroView.swift
//  FitLift
//
//  Created by Catherine on 08/04/2022.
//

import SwiftUI

struct GameIntroView: View {
    var body: some View {
        
        VStack (alignment: .leading) {
            NavigationView{
            VStack(alignment: .leading){
            Text("Instructions")
                    .font(.system(size: 30))
                .font(.title2)
                .padding(.leading, 14.0)
            Text("You will have 10 sec to position your body infont of the camera.")
                    .font(.system(size: 23))
                    .font(.subheadline)
                    .padding(.leading, 6.0)
                    .frame(width: 330.0, height: 80.0)
                    .padding(1)
                Image("kjk")
                stepper()
                NavigationLink(destination: StartPushUpsView()){StartWorkOut()}
                    
            }
            .padding(.bottom, 100.0)
            
            .navigationBarHidden(true)
            }
            Spacer()
                
        
        }
        .navigationBarTitle("")
        }
    }


struct GameIntroView_Previews: PreviewProvider {
    static var previews: some View {
        GameIntroView()
    }
}
