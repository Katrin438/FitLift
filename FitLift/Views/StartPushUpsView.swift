//
//  StartPushUpsView.swift
//  FitLift
//
//  Created by Stelian Rumenov on 12/04/2022.
//

import SwiftUI
import CoreMotion

struct StartPushUpsView: View {
    
    //creates counter variable to keep track of push ups
    //creates device variable out of current device to enable proximity sensor
    //sets timer to call function that reads proximity of person to device
    
    @State private var counter = 0;
    var myDevice = UIDevice.current
    
    let device: () = UIDevice.current.isProximityMonitoringEnabled = true
    
    let timer = Timer.publish(every: 0.8, on: .main, in: .common).autoconnect()


    //increments counter by one and is called every time a push up is performed
    func increment() {
        counter = counter + 1
        print(counter)
    }
    
    
    //uses proximityState property to notify is an object is near the front of the phone and call the increment() function
    func notifyProximityChange() {
        
        NotificationCenter.default.addObserver(self, selector: Selector(("notifyProximityChange")), name: UIDevice.proximityStateDidChangeNotification, object: myDevice)
        
        if(UIDevice.current.proximityState){
            print("detected")
            increment()
        }else{
            print("not detected")
        }
    }
    
    //adds observer to listen for notifications from notifyProximityChange
    func addObserver() {
        NotificationCenter.default.addObserver(self, selector: Selector(("notifyProximityChange")), name: UIDevice.proximityStateDidChangeNotification, object: myDevice)
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
                Text("Push-ups: \(counter)")
                    .padding(15)
                    .background(Color(hue: 0.0, saturation: 0.083, brightness: 0.995))
                    .cornerRadius(8)
                    .frame(width: 280, height: 55.0)
                    .padding(.top, 700.0)
                    .padding(.leading,54)
                                .onReceive(timer) { _ in
                                    notifyProximityChange()
                               }
                                .font(.system(size: 30))
                NavigationLink(destination: GameEndResultView()){EndWorkOut()}
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


struct StartPushUpsView_Previews: PreviewProvider {
    static var previews: some View {
        StartPushUpsView()
    }
}
