//
//  ViewController.swift
//  LionAndTigers
//
//  Created by Robert Lundkvist on 09/02/2015.
//  Copyright (c) 2015 Robert Lundkvist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    var myTigers:[Tiger] = []
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myTiger.age = myTiger.ageIntTigerYearsFromAge(myTiger.age)
        
        myTigers.append(myTiger)
        
        myTiger.chuff()
        myTiger.chuffANumberOfTimes(5, isLoud: true)
        
        println("My tiger's name is \(myTiger.name), its' age is \(myTiger.age), its' breed is \(myTiger.breed) and its' image is \(myTiger.image)")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.age = 2
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        secondTiger.age = secondTiger.ageIntTigerYearsFromAge(secondTiger.age)
        
        secondTiger.chuff()
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.age = 4
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        thirdTiger.age = thirdTiger.ageIntTigerYearsFromAge(thirdTiger.age)
        
        var forthTiger = Tiger()
        forthTiger.name = "Spar"
        forthTiger.age = 5
        forthTiger.breed = "Siberian Tiger"
        forthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        forthTiger.age = forthTiger.ageIntTigerYearsFromAge(forthTiger.age)
        
        myTigers += [secondTiger, thirdTiger, forthTiger]
        
        myTiger.chuffANumberOfTimes(3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
        
        var randomIndex:Int
        do{
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        } while currentIndex == randomIndex
        
        currentIndex = randomIndex
        
        let tiger = myTigers[randomIndex]
        
//        myImageView.image = tiger.image
//        nameLabel.text = tiger.name
//        ageLabel.text = "\(tiger.age)"
//        breedLabel.text = tiger.breed
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = "\(tiger.age)"
            self.breedLabel.text = tiger.breed
            
            }, completion: {
                (finished: Bool) -> () in
        })
    
    }
    
    

}

