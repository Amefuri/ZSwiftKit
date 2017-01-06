//
//  SequenceType.swift
//  pointube
//
//  Created by peerapat atawatana on 9/9/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import Foundation

public extension Sequence {
    
    /// Categorises elements of self into a dictionary, with the keys given by keyFunc
    
    func categorise<U : Hashable>(_ keyFunc: (Iterator.Element) -> U) -> [U:[Iterator.Element]] {
        var dict: [U:[Iterator.Element]] = [:]
        for el in self {
            let key = keyFunc(el)
            if case nil = dict[key]?.append(el) { dict[key] = [el] }
        }
        return dict
    }
}
