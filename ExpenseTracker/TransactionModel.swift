//
//  TransactionModel.swift
//  ExpenseTracker
//
//  Created by 何杰辉 on 2022/3/26.
//

import Foundation

struct Transaction: Identifiable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    var merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    var categoryId: Int
    var category: String
    let isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
}

enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}
