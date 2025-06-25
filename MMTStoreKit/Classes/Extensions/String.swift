//
//  extensions.swift
//  StoreKitHelper
//
//  Created by 王楚江 on 2025/3/5.
//

import Foundation

@available(iOS 15.0, *)
public extension String {
    func localized() -> String {
        return NSLocalizedString(self, bundle: Bundle.main, comment: "")
    }
    func localized(locale: Locale = Locale.current) -> String {
        let languagePart = locale.identifier.split(separator: "_").first.map(String.init) ?? ""
        guard let path = Bundle.main.path(forResource: languagePart, ofType: "lproj") else {
            return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, comment: "")
        }
        let languageBundle = Bundle(path: path)
        return NSLocalizedString(self, bundle: languageBundle ?? Bundle.main, comment: "")
    }
}
