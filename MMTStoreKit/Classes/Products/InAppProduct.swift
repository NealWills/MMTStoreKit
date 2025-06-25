//
//  MMT15InAppProduct.swift
//  StoreKitHelper
//
//  Created by 王楚江 on 2025/3/8.
//

@available(iOS 15.0, *)
public protocol MMT15InAppProduct: CaseIterable, Identifiable where ID == ProductID {
    var id: ProductID { get }
}


@available(iOS 15.0, *)
/**
 ```swift
 enum AppProduct: String, MMT15InAppProduct {
     case lifetime = "xxx.lifetime"
     case annually = "xxx.annually"
     case monthly = "xxx.monthly"
     var id: String { rawValue }
 }
 let products = AppProduct.allCases
 var store = MMT15StoreContext(products: AppProduct.allCases)
 let available = products.available(in: store)
 let purchased = products.purchased(in: store)
 ```
 */
public extension Collection where Element: MMT15InAppProduct {
    /// Get all products available in a ``MMT15StoreContext``.
    func available(in context: MMT15StoreContext) -> [Self.Element] {
        let ids = context.productIds
        return self.filter { ids.contains($0.id) }
    }
    /// Get all products purchased in a ``MMT15StoreContext``.
    func purchased(in context: MMT15StoreContext) -> [Self.Element] {
        let ids = context.purchasedProductIds
        return self.filter { ids.contains($0.id) }
    }
}
