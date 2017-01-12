//
//  GreetButton.swift
//  TDD
//
//  Created by Nguyễn Thành Thực on 1/12/17.
//  Copyright © 2017 Nguyen Thanh Thuc. All rights reserved.
//

import UIKit

@IBDesignable
class GreetButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
}
