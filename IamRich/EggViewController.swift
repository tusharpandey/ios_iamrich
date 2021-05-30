//
//  EggViewController.swift
//  IamRich
//
//  Created by itsupport on 28/05/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import UIKit

class EggViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    let egg1Time = 4
    let egg2Time = 8
    let egg3Time = 12

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Egg"
        titleLabel.textAlignment = .center
        progressBar.progress = 0.0
    }

    @IBAction func eggClicked(_ sender: UIButton) {
        let hardnessTitle = sender.currentTitle
        var eggTime : Int
        switch hardnessTitle {
        case "EGG-1":
            eggTime = egg1Time
        case "EGG-2":
            eggTime = egg2Time
        case "EGG-3":
            eggTime = egg3Time
        default:
            eggTime = -1
        }
        progressBar.progress = 0.0
        self.titleLabel.text = "How do you like your eggs"
        startTheTimer(time: eggTime)
    }
    
    func startTheTimer (time : Int) {
        var leftTime : Double = 0
        let interval : Double = 1
        Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { (Timer) in
            leftTime = leftTime + interval
            if leftTime >= Double(time) {
                Timer.invalidate()
                self.titleLabel.text = "DONE"
                self.delay()
            }
            let valueToUpdate = Float(leftTime)
            let progressToUpdate = Float(valueToUpdate/Float(time))
            print("print again \(progressToUpdate)")
            
            self.progressBar.progress = progressToUpdate
        }
    }
    
    func delay(){
        Timer.scheduledTimer(withTimeInterval: 4, repeats: false) {
            (Timer) in
            Timer.invalidate()
            self.titleLabel.text = "How do you like your eggs"
            self.progressBar.progress = 0.0
        }
    }
    
}
