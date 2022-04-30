//
//  ExerciseCard.swift
//  FitLift
//
//  Created by Catherine on 08/04/2022.
//

import SwiftUI

struct ExerciseCard: View {
    var body: some View {
        ScrollView(.vertical){
    VStack (alignment: .leading){
            HStack{
                VStack(alignment: .leading){
            Image("1")
                    NavigationLink(destination: GameIntroView()){Text("Push-Up")}
                        .font(.system(size: 20))
                        .font(.subheadline)
                        Spacer()
                }
                
                VStack(alignment: .leading) {
                    Image("2")
                    NavigationLink(destination: GameIntroView2()){Text("Squat")}
                    .font(.system(size: 20))
                    .font(.subheadline)
                    Spacer()
                }
                }
        HStack{
            VStack(alignment: .leading){
        Image("3")
        Text("Pull Downs") .font(.system(size: 20))
            }
            VStack(alignment: .leading){
        Image("dumbellrolls")
        Text("Dumbellrolls")
                    .font(.system(size: 20))
            }
        }
        }
    }
}

}
struct ExerciseCard_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCard()
    }
}
