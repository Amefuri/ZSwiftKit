//
//  Helper+L10N.swift
//  pointube
//
//  Created by peerapat atawatana on 9/8/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import Foundation
import UIKit

public extension Helper {
    struct L10N {
        
        public static func setText(_ target:AnyObject, text:String) {
            if target is UILabel {
                let target = target as! UILabel
                target.text = text
            }
            else if target is UIButton {
                let target = target as! UIButton
                target.setTitle(text, for: UIControlState())
            }
            else if target is UIBarButtonItem {
                let target = target as! UIBarButtonItem
                target.title = text
            }
            else if target is UITextField {
                let target = target as! UITextField
                target.placeholder = text
            }
        }
    }
}
