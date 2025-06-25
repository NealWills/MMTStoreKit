//
//  MMT14DownStoreKit.swift
//  MMTStoreKit
//
//  Created by Maxeye_Neal on 2025/6/25.
//

import Foundation
import StoreKit

class MMT14DownStoreKitToolUnit: MMTStoreKitToolUnit {
    
    var productIdList: [String] = []
    
    func requestProduct(productIdList: [String]) {
        
        SKPaymentQueue.default()
        
    }
    
    
}

extension MMT14DownStoreKitToolUnit: SKPaymentTransactionObserver, SKProductsRequestDelegate {
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
    }
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
    }
    
    
}
