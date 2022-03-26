//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by 何杰辉 on 2022/3/26.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "01/24/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Apple", amount: 11.49, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewDta = [Transaction](repeating: transactionPreviewData, count: 10)
