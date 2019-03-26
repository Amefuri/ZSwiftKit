//
//  UIApplication.swift
//  fleet
//
//  Created by peerapat atawatana on 12/9/2559 BE.
//  Copyright © 2559 DaydreamClover. All rights reserved.
//

import UIKit

public extension UIApplication {
  
  class func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
    if let navigationController = controller as? UINavigationController {
      return topViewController(controller: navigationController.visibleViewController)
    }
    if let tabController = controller as? UITabBarController {
      if let selected = tabController.selectedViewController {
        return topViewController(controller: selected)
      }
    }
    if let presented = controller?.presentedViewController {
      return topViewController(controller: presented)
    }
    return controller
  }
}


