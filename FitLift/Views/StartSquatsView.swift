//
//  StartSquatsView.swift
//  FitLift
//
//  Created by Stelian Rumenov on 12/04/2022.
//

import SwiftUI
import CoreMotion


struct StartSquatsView: View {
    
    @State private var counter = 0;
    var motionManager = CMMotionManager()
    var myDevice = UIDevice.current.isProximityMonitoringEnabled=false

    
    //Sets the update time of the accelorometer to 1 second and reads
    //the data of the Z axis. That is the tilt axis
    //Since the sensor outputs values between 1 and -1 we use the absolute value to avoid the need for calibration
    func updateMotion() {
        motionManager.accelerometerUpdateInterval = 1
        
        motionManager.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
            if let mydata = data

            {
                if abs(mydata.acceleration.z*10) > 9 {
                    print("You did a squat")
                    counter = counter + 1
                }else{
                    print("Do a squat!")
                }
                
            }
            
        }
    }
    @State var animate: Bool = false
       let animation: Animation = Animation.linear(duration: 10.0).repeatForever(autoreverses: false)
    var body: some View {
        NavigationView{
            GeometryReader { geo in
                       HStack(spacing: -1) {
                           Image("correctk")
                               .aspectRatio(contentMode: .fit)
                           Image("correctk1")
                               .aspectRatio(contentMode: .fit)
                               .frame(width: geo.size.width, alignment: .leading)
                       }
                       .frame(width: geo.size.width, height: geo.size.height,
                              alignment: animate ? .trailing : .leading)
                dotsettings()
                    .padding(.leading, 170.0)
                Text("Squats: \(counter)")
                    .onAppear(perform: updateMotion)
                    .padding(15)
                    .background(Color(hue: 0.0, saturation: 0.083, brightness: 0.995))
                    .cornerRadius(8)
                    .frame(width: 280, height: 55.0)
                    .padding(.top, 700.0)
                    .padding(.leading,54)
                                .font(.system(size: 30))
                NavigationLink(destination: GameEndResultView2()){EndWorkOut()}
                    .padding(.top, 600.0)
                
                   }
                   .ignoresSafeArea()
                   .onAppear {
                       withAnimation(animation) {
                           animate.toggle()
                       }
                       
                   }


        }.navigationBarHidden(true)
        }
        }
    

struct StartSquatsView_Previews: PreviewProvider {
    static var previews: some View {
        StartSquatsView()
    }
}
