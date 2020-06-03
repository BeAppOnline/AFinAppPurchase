//
//  InAppPurchaseBillingRepository.swift
//  
//
//  Created by Ali Fakih on 6/4/20.
//

import StoreKit

protocol InAppPurchaseBillingRepository: NSObject, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
    func requestProducts(_ completion: @escaping ProductsRequestCompletionHandler)
    func buyProduct(_ productIdentifier: ProductIdentifier)
    func buyProduct(_ product: SKProduct)
    func isProductPurchased(_ productIdentifier: ProductIdentifier) -> Bool
    func canMakePayment() -> Bool
    func restorePurchase()
    func removeObserver()
    func registerObserver()
}

