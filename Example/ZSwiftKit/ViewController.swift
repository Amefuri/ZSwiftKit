//
//  ViewController.swift
//  ZSwiftKit
//
//  Created by amefuri on 03/26/2019.
//  Copyright (c) 2019 amefuri. All rights reserved.
//

import UIKit
import ZSwiftKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    // Prepare for example
    Helper.Alert(view: self, title: "AA", message: "AA", confirmText: "OK")
  }
}


