//
//  stepper.swift
//  FitLift
//
//  Created by Catherine on 09/04/2022.
//

import SwiftUI

struct stepper: View {
    
        @State var stepperValue: Int = 0
        @State var stepperValue1: Int = 0
    

    var body: some View {
        HStack {
            VStack(alignment: .leading){
            Text("Sets: ")
            .font(.system(size: 23))
            Stepper(" \(stepperValue)", value: $stepperValue)
                    .frame(width: 120, height: 20)
            }
            .padding()
            VStack(alignment: .leading){
            Text("Repetitions:")
                    .font(.system(size: 23))
            Stepper(" \(stepperValue1)", value: $stepperValue1)
                .frame(width: 120, height: 20)
            }
        }.padding(.leading, 20.0)
            
            
    }
}

struct stepper_Previews: PreviewProvider {
    static var previews: some View {
        stepper()
    }
}
