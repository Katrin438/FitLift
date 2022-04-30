//
//  ContentView.swift
//  FitLift
//
//  Created by Catherine on 06/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
        VStack {
            ExtractedView()
            SearchBar()
            SlidingButtons()
            ExerciseCard()
        }
                .navigationBarTitle("")
                .navigationBarHidden(true)
    }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}

// HEADER : TWO
struct ExtractedView: View {
    var body: some View {
        HStack{
            VStack (alignment: .leading) {
                Text("Hey")
                    .font(.system(size: 40))
                    .font(.title)
                    .fontWeight(.bold)
                Text("Welcome to Fitlift")
                    .font(.system(size: 25))
                    .font(.subheadline)
            }
            .padding()
            Spacer()
            Image("Ellipse")
        }
        .padding(16)
    }
}
