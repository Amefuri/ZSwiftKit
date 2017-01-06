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
    public var attributedString: NSAttributedString? {
        do {
            return try NSAttributedString(data: self, options:[NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: String.Encoding.utf8], documentAttributes: nil)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }
}
