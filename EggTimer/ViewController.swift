//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    //let softTime = 5
    //let mediumTime = 8
    //let hardTime = 12
    let eggTimes = ["Soft": 300, "Medium": 480, "Hard": 720]
    
    var secondsRemaining = 60

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        secondsRemaining = eggTimes[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1.0,
                             target: self,
                             selector: #selector(updateTimer),
                             userInfo: nil,
                             repeats: true)
        
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds")
            secondsRemaining -= 1
        }
    }

        
        //switch hardness {
        //case "Soft":
           // print("Your Egg is Soft :\(softTime) min")
        //case "Medium":
         //   print("Your Egg is Medium :\(mediumTime) min")
       // case "Hard":
       //     print("Your Egg is Hard :\(hardTime) min")
       // default:
       //     print("Error")
       // }
        
    }
    
}
