//
//  String.swift
//  pointube
//
//  Created by peerapat atawatana on 8/22/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import Foundation

public extension String {
  
  var utf8Data: Data? {
    return data(using: String.Encoding.utf8)
  }
}

