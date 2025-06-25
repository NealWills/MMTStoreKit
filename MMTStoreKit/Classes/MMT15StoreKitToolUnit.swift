//
//  MMT15StoreKit.swift
//  MMTStoreKit
//
//  Created by Maxeye_Neal on 2025/6/25.
//

import Foundation

@available(iOS 15.0, *)
class MMT15StoreKitToolUnit: MMTStoreKitToolUnit {
    
    var productIdList: [String] = []
    
    func requestProduct(productIdList: [String]) {
        
        Task {
            let storeContext = MMT15StoreContext.init(productIds: productIdList)
            let products = try await storeContext.getProducts()
            for product in products {
                
                let model = MMT15StoreContextModel.init()
                model.jsonRepresentation = product.jsonRepresentation
                model.displayName = product.displayName
                model.displayPrice = product.displayPrice
                model.price = product.price
                model.descrip = product.description
                model.id = product.id
                model.isFamilyShareable = product.isFamilyShareable
                
                print("MMT15StoreKitToolUnit product: \(model) ")
            }
        }
        
    }
}
