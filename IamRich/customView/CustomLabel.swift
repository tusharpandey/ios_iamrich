//
//  CustomLabel.swift
//  IamRich
//
//  Created by itsupport on 31/05/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame:frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder:coder)
    }
    
    var textPadding = UIEdgeInsets(
        top: 10,
        left: 20,
        bottom: 10,
        right: 20
    )
}
