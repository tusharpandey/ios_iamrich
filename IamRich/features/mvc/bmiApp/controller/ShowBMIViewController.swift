//
//  ShowBMIViewController.swift
//  IamRich
//
//  Created by itsupport on 06/06/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import UIKit

class ShowBMIViewController: UIViewController {

    @IBOutlet weak var bmiValue: UILabel!
    
    var receivedBmi : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValue.text = "\(receivedBmi)"
    }
}
