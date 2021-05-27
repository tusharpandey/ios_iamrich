//
//  SetttingViewController.swift
//  IamRich
//
//  Created by itsupport on 27/05/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import UIKit

class SetttingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settting"
    }
    
    @IBAction func userLoggedOut(_ sender: Any) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "LoginViewController")
        UIApplication.shared.windows.first?.rootViewController = viewController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
}
