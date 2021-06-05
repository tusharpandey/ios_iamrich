//
//  CustomView.swift
//  IamRich
//
//  Created by itsupport on 01/06/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView : UIButton{
    
    @IBOutlet var customView: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    func configure(){
        self.backgroundColor = .yellow
//        self.layer.cornerRadius = 5
//        self.layer.borderWidth = 1
//        self.layer.borderColor = UIColor.red.cgColor
//        self.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10);
//        self.titleEdgeInsets = UIEdgeInsets(top: 0.0, left: 100.0, bottom: 0.0, right: 0.0)
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
    }
}
