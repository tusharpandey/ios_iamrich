//
//  AppViewController.swift
//  IamRich
//
//  Created by itsupport on 03/06/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import UIKit

class AppViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(true)
//        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
//    }
    
    @IBAction func openQuiz(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "QuizView", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    @IBAction func openBmi(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name:"BmiView",bundle:nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "BmiViewController") as! BmiViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
