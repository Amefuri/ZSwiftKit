//
//  CALayer.swift
//  pointube
//
//  Created by peerapat atawatana on 9/16/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import Foundation
import UIKit

public extension CALayer {
    public func setBorderColorFromUIColor(_ color: UIColor) { self.borderColor = color.cgColor }
}
