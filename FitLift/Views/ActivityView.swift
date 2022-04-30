//
//  ActivityView.swift
//  FitLift
//
//  Created by Catherine on 08/04/2022.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        ScrollView{
            HStack{
        VStack (alignment: .leading) {
            VStack(alignment: .leading){
            Text("Activity")
                .font(.system(size: 35))
                .font(.title)
                .fontWeight(.bold)
                .padding(.leading)
            Text("Summary")
                .font(.system(size: 35))
                .font(.title)
                .fontWeight(.bold)
                .padding(.leading)
                
            }
            Spacer()
            WeeekDays()
             
            Text("Today's report")
                .font(.system(size: 25))
                .padding(.leading)
            
            Stats()
                .padding(.leading, 30.0)
            TodaysActivity()
                .padding(.leading, 20.0)
            }
        }
            .padding()
            Spacer()
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
