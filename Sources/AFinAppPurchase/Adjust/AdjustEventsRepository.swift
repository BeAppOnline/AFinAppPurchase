//
//  AdjustEventsRepository.swift
//  
//
//  Created by Ali Fakih on 6/4/20.
//

import Foundation
import StoreKit

public protocol AdjustEventsRepository {
    func sendSuccessEvent(transaction: SKPaymentTransaction)
    func sendFailureEvent(transaction: SKPaymentTransaction, error: Error?)
    func sendRestoreSuccessEvent(transaction: SKPaymentTransaction)
}
