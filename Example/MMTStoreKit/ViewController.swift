//
//  ViewController.swift
//  MMTStoreKit
//
//  Created by Donghn on 06/25/2025.
//  Copyright (c) 2025 Donghn. All rights reserved.
//

import UIKit
import MMTStoreKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let testButton = UIButton.init(frame: .init(x: 100, y: 200, width: 100, height: 100))
        self.view.addSubview(testButton)
        testButton.backgroundColor = UIColor.init(white: 0, alpha: 1)
        testButton.addTarget(self, action: #selector(testButtonClickAction(_:)), for: .touchUpInside)
    }
    
    @objc func testButtonClickAction(_ sender: UIButton) {
        
        MMTStoreKitTool.requestProduct(productIdList: [
            "com.Metapen.ipa.test.year",
            "com.Metapen.ipa.test.season",
            "com.Metapen.ipa.test.month",
            "com.Metapen.ipa.test.week"
        ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

