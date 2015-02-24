//
//  Tiger.swift
//  LionAndTigers
//
//  Created by Robert Lundkvist on 09/02/2015.
//  Copyright (c) 2015 Robert Lundkvist. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff() {
        println("Tiger: chuff chuff")
    }
    
    func chuffANumberOfTimes(numberOftimes:Int){
        for var chuff = 0; chuff < numberOftimes; ++chuff {
            self.chuff()
            }
    }
    
    func chuffANumberOfTimes(numberOftimes:Int,isLoud:Bool){
        for var chuffTimes = 1; chuffTimes <= numberOftimes; chuffTimes++ {
            if isLoud {
                chuff()
            } else {
                println("Tiger: purr purr")
            }
            
            }
        
    }
}