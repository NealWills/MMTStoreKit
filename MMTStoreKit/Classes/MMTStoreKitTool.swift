//
//  MMTStoreKitTool.swift
//  MMTStoreKit
//
//  Created by Maxeye_Neal on 2025/6/25.
//

import Foundation

class MMTStoreKitToolUnit: NSObject { }

public class MMTStoreKitTool: NSObject {
    
    static let share = MMTStoreKitTool()
    var unitList: [MMTStoreKitToolUnit] = []
    
    public class func requestProduct(productIdList: [String]) {
        if #available(iOS 15.0, *) {
            let unit = MMT15StoreKitToolUnit.init()
            MMTStoreKitTool.share.unitList.append(unit)
            unit.requestProduct(productIdList: productIdList)
        } else {
            let unit = MMT14DownStoreKitToolUnit.init()
            MMTStoreKitTool.share.unitList.append(unit)
            unit.requestProduct(productIdList: productIdList)
        }
    }
    
}
