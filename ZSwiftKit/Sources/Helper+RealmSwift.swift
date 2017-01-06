//
//  Helper+RealmSwift.swift
//  fleet
//
//  Created by peerapat atawatana on 10/19/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import Foundation
//import RealmSwift
//import Realm

/*extension Helper {
    
    class Realm {
        static func cascadingDelete(_ object: AnyObject?) {
//            if let deletable = object as? CascadingDeletable {
//                deletable.childrenToDelete().forEach{ child in
//                    cascadingDelete(child)
//                }
//            }
//            
//            if let realmArray = object as? RLMArray {
//                let array = realmArray.flatMap{$0}
//                array.forEach { item in
//                    cascadingDelete(item)
//                }
//            }
            
            //if let realmObject = object as? RLMObject {
                //transactionWithBlock { [weak self] in
                    //self?.realm.deleteObject(realmObject)
                }
                //realm.deleteObject(realmObject)
                //realm.delete(object)
                //TODO
                //realm.delete(object)
            //}
            if let deletable = object as? CascadingDeletable {
                deletable.childrenToDelete().forEach{ child in
                    cascadingDelete(child)
                }
            }
            
            if let realmObject = object as? Object {
                try! realm.write({
                    realm.delete(realmObject)
                })
            }
            
//            if let realmObjectOptional = object as? Object? {
//                try! realm.write({
//                    if let realmObjectOptional = realmObjectOptional {
//                        realm.delete(realmObjectOptional)
//                    }
//                })
//            }
        }
    }
}*/
