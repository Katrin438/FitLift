//
//  EndWorkOut.swift
//  FitLift
//
//  Created by Catherine on 12/04/2022.
//

import SwiftUI

struct EndWorkOut: View {
    var body: some View {
        VStack{
        Text("END WORKOUT")
        .font(.system(size: 23))
        .foregroundColor(Color.white)
        .frame(width: 280, height: 55.0)
        .background(Color(red: 0.41568627450980394, green: 0.4, blue: 0.7803921568627451))
        .cornerRadius(10)
        .padding(.leading, 50.0)
    }
    }
}

struct EndWorkOut_Previews: PreviewProvider {
    static var previews: some View {
        EndWorkOut()
    }
}
