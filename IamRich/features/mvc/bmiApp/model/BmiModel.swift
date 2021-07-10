//
//  BmiModel.swift
//  IamRich
//
//  Created by itsupport on 05/06/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import Foundation

struct UserData {
    var height : Int = 5
    var weight : Int = 70
    
    func getBMI() -> Int {
        return self.height * self.weight
    }
}
