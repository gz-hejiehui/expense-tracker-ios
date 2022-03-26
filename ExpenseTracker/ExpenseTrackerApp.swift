//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by 何杰辉 on 2022/3/26.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
