//
//  DetectPushUps.swift
//  FitLift
//
//  Created by Stelian Rumenov on 12/04/2022.
//

import Foundation
import UIKit

struct PushUpsManager {
    
    let device: () = UIDevice.current.isProximityMonitoringEnabled = true
    let timer = Timer.publish(every: 0.8, on: .main, in: .common).autoconnect()
    
    func enableProximity() {
        
    }
    
    func detectProximityChange() {
        NotificationCenter.default.addObserver(self, selector: Selector(("detectProximityChange")), name: UIDevice.proximityStateDidChangeNotification, object: nil)
        
        if(UIDevice.current.proximityState){
            print("detected")
        }else{
            print("not detected")
        }
        
    }
}
