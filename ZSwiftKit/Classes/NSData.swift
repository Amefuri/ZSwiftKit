//
//  NSData.swift
//  pointube
//
//  Created by peerapat atawatana on 8/22/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import Foundation
import UIKit

public extension Data {
  
  var attributedString: NSAttributedString? {
    do {
      return try NSAttributedString(data: self,
                                    options: [.documentType: NSAttributedString.DocumentType.html,
                                              .characterEncoding: String.Encoding.utf8.rawValue],
                                    documentAttributes: nil)
    } catch let error as NSError {
      print(error.localizedDescription)
    }
    return nil
  }
}

