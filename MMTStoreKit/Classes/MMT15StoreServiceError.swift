//
//  MMT15StoreServiceError.swift
//  StoreKitHelper
//
//  Created by 王楚江 on 2025/3/4.
//

import StoreKit

@available(iOS 15.0, *)
/// 此枚举定义了与商店服务相关的错误。
public enum MMT15StoreServiceError: Error {
    
    /// 当交易无法验证时，会抛出此错误。
    case invalidTransaction(Transaction, VerificationResult<Transaction>.VerificationError)
    
    /// 当平台不支持购买时，会抛出此错误。
    case unsupportedPlatform(_ message: String)
}

@available(iOS 15.0, *)
extension MMT15StoreServiceError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .invalidTransaction(_, let verificationError):
            return "Transaction verification failed: \(verificationError.localizedDescription)"
        case .unsupportedPlatform(let message):
            return "Unsupported platform: \(message)"
        }
    }
}
