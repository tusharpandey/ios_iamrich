//
//  ViewController.swift
//  IamRich
//
//  Created by itsupport on 20/05/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    //--
    
    @IBAction func userLogined(_ sender: Any) {
                let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = mainStoryboard.instantiateViewController(withIdentifier: "DashboardViewController")
                UIApplication.shared.windows.first?.rootViewController = viewController
                UIApplication.shared.windows.first?.makeKeyAndVisible(
                )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        view.backgroundColor = .red
    

    }
}

