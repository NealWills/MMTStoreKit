//
//  MMTStoreContextModel.swift
//  MMTStoreKit
//
//  Created by Maxeye_Neal on 2025/6/25.
//

import Foundation


public class MMTStoreContextModel: NSObject {
    
    /// The raw JSON representation of the product.
    public var jsonRepresentation: Data?

    /// The unique product identifier.
    public var id: String?

    /// The type of the product.
//    public let type: Product.ProductType?

    /// A localized display name of the product.
    public var displayName: String?

    /// A localized description of the product.
    public var descrip: String?

    /// The price of the product in local currency.
    public var price: Decimal?

    /// A localized string representation of `price`.
    public var displayPrice: String?

    /// Whether the product is available for family sharing.
    public var isFamilyShareable: Bool?
    
    public override var description: String {
        get {
            var title = ""
            title = title + "id: " + (id ?? "null")  + " \n"
            title = title + "displayName: " + (displayName ?? "null")  + " \n"
            title = title + "displayPrice: " + (displayPrice ?? "null")  + " \n"
            title = title + "isFamilyShareable: " + ((isFamilyShareable ?? false) ? "true" : "false")  + " \n"
            title = title + "price: " + "\(price ?? 0.0)"  + " \n"
            title = title + "descrip: " + (descrip ?? "null")  + " \n"
            return title
        }
    }
    
}
