//
//  Helper+UIBarButtonItem.swift
//  fleet
//
//  Created by peerapat atawatana on 7/28/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import Foundation
import UIKit

public extension Helper {
    struct UI {
        
        static func HideUIBarButton(_ button:UIBarButtonItem) {
            button.isEnabled = false
            button.tintColor = UIColor.clear
        }
        
        static func ShowUIBarButton(_ button:UIBarButtonItem) {
            button.isEnabled = true
            button.tintColor = nil
        }
        
        static func configCircularView(_ view:UIView) {
            view.layer.cornerRadius    = view.frame.size.height / 2;
            view.layer.masksToBounds   = true;
        }
    }
}
