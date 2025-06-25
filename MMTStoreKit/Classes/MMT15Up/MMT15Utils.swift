//
//  Untitled.swift
//  StoreKitHelper
//
//  Created by 王楚江 on 2025/3/5.
//

#if os(macOS)
import AppKit
#else
import UIKit
#endif

@available(iOS 15.0, *)
class MMT15Utils {
    nonisolated(unsafe) static let shared = MMT15Utils()
    @MainActor static func alert(title: String, message: String) {
        #if os(macOS)
        let alert = NSAlert()
        alert.messageText = title
        alert.informativeText = message
        alert.alertStyle = .warning
        alert.window.level = .mainMenu
        alert.addButton(withTitle: "OK")
        alert.runModal()
        #else
        guard let keyWindow = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .first(where: { $0.isKeyWindow }) else {
            return
        }
        var topViewController = keyWindow.rootViewController
        while let presentedViewController = topViewController?.presentedViewController {
            topViewController = presentedViewController
        }
        guard let viewController = topViewController else {
            return
        }
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        viewController.present(alert, animated: true)
        #endif
    }
}
