//
//  Helper+Common.swift
//  common
//
//  Created by peerapat atawatana on 7/5/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import UIKit

public extension Helper {
    
    static func Alert(view:UIViewController, title:String, message:String) {
        Alert(view: view, title: title, message: message, doneCompletion: nil)
    }
    
    static func Alert(view:UIViewController, title:String, message:String, doneCompletion: ((UIAlertAction) -> Void)?) {
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: doneCompletion))
        view.present(alertMessage, animated: true, completion: nil)
    }
    
    static func AlertConfirm(view:UIViewController, title:String, message:String, confirmText:String, cancelText:String, isInverseButtonPos:Bool, confirmCompletion: ((UIAlertAction) -> Void)?, cancelCompletion: ((UIAlertAction) -> Void)?) {
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if isInverseButtonPos {
            alertMessage.addAction(UIAlertAction(title: cancelText, style: .default, handler: cancelCompletion))
            alertMessage.addAction(UIAlertAction(title: confirmText, style: .default, handler: confirmCompletion))
        }
        else {
            alertMessage.addAction(UIAlertAction(title: confirmText, style: .default, handler: confirmCompletion))
            alertMessage.addAction(UIAlertAction(title: cancelText, style: .default, handler: cancelCompletion))
        }
        
        view.present(alertMessage, animated: true, completion: nil)
    }
    
    static func AlertInput(view:UIViewController, title:String, message:String, confirmText:String, cancelText:String, isInverseButtonPos:Bool, inputPlaceholder:String, inputText:String, confirmCompletion: ((UIAlertAction, String) -> Void)?, cancelCompletion: ((UIAlertAction) -> Void)?) {
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertMessage.addTextField { (textField) in
            textField.placeholder   = inputPlaceholder
            textField.text          = inputText
        }
        
        if isInverseButtonPos {
            alertMessage.addAction(UIAlertAction(title: cancelText, style: .default, handler: cancelCompletion))
            alertMessage.addAction(UIAlertAction(title: confirmText, style: .default, handler: { (alertAction) in
                if let confirmCompletion = confirmCompletion { confirmCompletion(alertAction, alertMessage.textFields![0].text ?? "") }
            }))
        }
        else {
            alertMessage.addAction(UIAlertAction(title: confirmText, style: .default, handler: { (alertAction) in
                if let confirmCompletion = confirmCompletion { confirmCompletion(alertAction, alertMessage.textFields![0].text ?? "") }
            }))
            alertMessage.addAction(UIAlertAction(title: cancelText, style: .default, handler: cancelCompletion))
        }
        
        view.present(alertMessage, animated: true, completion: nil)
    }
    
    static func getDocumentsDirectory() -> NSString {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentsDirectory = paths[0]
        return documentsDirectory as NSString
    }
    
    static func delay(_ delay:Double, closure:@escaping ()->()) {
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
    }
    
    static func verifyURL(_ urlString: String?) -> Bool {
        //Check for nil
        if let urlString = urlString {
            // create NSURL instance
            if let url = URL(string: urlString) {
                // check if your application can open the NSURL instance
                return UIApplication.shared.canOpenURL(url)
            }
        }
        return false
    }
}
