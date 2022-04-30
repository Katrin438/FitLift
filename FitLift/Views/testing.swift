//
//  testing.swift
//  FitLift
//
//  Created by Catherine on 13/04/2022.
//

import SwiftUI



struct testing: View {
    @State private var animationAmount = 1.0
    @State private var xVal: CGFloat = 0.0
        @State private var timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()
    var body: some View {
        //Image("pipi") {
          //  animationAmount += 1
        ZStack {
                    Image("pipi")  //image attached
                        .aspectRatio(contentMode: .fit)
                        .offset(x: xVal, y: 0)
                        .transition(.slide)
                        .padding()
                        .onReceive(timer) {_ in
                            xVal += 2
                            if xVal == 800 { xVal = 0 }
                        }
        }
        //.foregroundColor(.black)
        //.clipShape(Circle())
        //.scaleEffect(animationAmount)
       // .animation(.easeInOut(duration: 2), value: animationAmount)
       // .animation(
        //    .easeInOut(duration: 1)
       //         .repeatCount(3, autoreverses: true),
        //    value: animationAmount
      //  )
    }
    }


struct testing_Previews: PreviewProvider {
    static var previews: some View {
        testing()
    }
}
