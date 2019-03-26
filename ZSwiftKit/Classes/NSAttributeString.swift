//
//  NSAttributeString.swift
//  pointube
//
//  Created by peerapat atawatana on 10/5/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import Foundation

public extension NSAttributedString {
  
  func attributedStringByTrimmingCharacterSet(_ charSet: CharacterSet) -> NSAttributedString {
    let modifiedString = NSMutableAttributedString(attributedString: self)
    modifiedString.trimCharactersInSet(charSet)
    return NSAttributedString(attributedString: modifiedString)
  }
}

public extension NSMutableAttributedString {
  
  func trimCharactersInSet(_ charSet: CharacterSet) {
    var range = (string as NSString).rangeOfCharacter(from: charSet)
    
    // Trim leading characters from character set.
    while range.length != 0 && range.location == 0 {
      replaceCharacters(in: range, with: "")
      range = (string as NSString).rangeOfCharacter(from: charSet)
    }
    
    // Trim trailing characters from character set.
    range = (string as NSString).rangeOfCharacter(from: charSet, options: .backwards)
    while range.length != 0 && NSMaxRange(range) == length {
      replaceCharacters(in: range, with: "")
      range = (string as NSString).rangeOfCharacter(from: charSet, options: .backwards)
    }
  }
}

