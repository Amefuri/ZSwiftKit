//
//  Helper+Data.swift
//  fleet
//
//  Created by peerapat atawatana on 7/29/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import Foundation

public extension Helper {
    struct Data {
        
        // To document folder as root, support only one level folder
        static func saveData(_ data:Foundation.Data, folder:String , filename:String)-> String {
            
            // Always Attempt to Create Folder
            do {
                let photoFolder = Helper.getDocumentsDirectory().appendingPathComponent(folder)
                try FileManager.default.createDirectory(atPath: photoFolder, withIntermediateDirectories: true, attributes: nil)
            } catch let error as NSError {
                NSLog("\(error.localizedDescription)")
            }
            
            // Compose filepath and write to file
            let filePath = folder+"/"+filename
            let filePathFull = Helper.getDocumentsDirectory().appendingPathComponent(filePath)
            try? data.write(to: URL(fileURLWithPath: filePathFull), options: [.atomic])
            
            return filePath
        }
        
        static func loadData(_ path:String)-> Foundation.Data? {
            let loadPath = Helper.getDocumentsDirectory().appendingPathComponent(path)
            return (try? Foundation.Data(contentsOf: URL(fileURLWithPath: loadPath)))
        }
        
        static func deleteData(_ path:String) {
            do {
                let fullPath = Helper.getDocumentsDirectory().appendingPathComponent(path)
                try FileManager.default.removeItem(atPath: fullPath)
            } catch let error as NSError {
                NSLog("\(error.localizedDescription)")
            }
        }
    }
}
