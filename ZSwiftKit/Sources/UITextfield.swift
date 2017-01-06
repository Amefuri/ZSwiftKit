//
//  UITextfield.swift
//  pointube
//
//  Created by peerapat atawatana on 10/4/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import UIKit

public extension UITextField {
    
    public func setPlaceHolderColor(_ color:UIColor) {
        let newAtt = NSAttributedString(string: self.placeholder ?? "", attributes: [NSForegroundColorAttributeName:color])
        self.attributedPlaceholder = newAtt
    }
}
