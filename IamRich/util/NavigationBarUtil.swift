//
//  NavigationBarUtil.swift
//  IamRich
//
//  Created by itsupport on 05/06/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import Foundation

import UIKit

extension UIViewController {
    func hideNavigationBar(animated: Bool){
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)

    }

    func showNavigationBar(animated: Bool) {
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
