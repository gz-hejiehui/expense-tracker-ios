//
//  RecentTransactionList.swift
//  ExpenseTracker
//
//  Created by 何杰辉 on 2022/3/26.
//

import SwiftUI

struct RecentTransactionList: View {
    @EnvironmentObject var tranactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            HStack {
                // MARK: Header Title
                Text("Recent Transctions")
                    .bold()
                
                Spacer()

                // MARK: Header Link
                NavigationLink {
                    TransactionList()
                } label: {
                    HStack(spacing: 4) {
                        Text("See All")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(Color.text)
                }
            }
            .padding(.top)

            // MARK: Recent Tranaction List
            ForEach(Array(tranactionListVM.transactions.prefix(5).enumerated()), id: \.element) { index, tranaction in
                TransactionRow(transaction: tranaction)
                
                Divider()
                    .opacity(index == 4 ? 0 : 1)
            }
        }
        .padding()
        .background(Color.systemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
    }
}

struct RecentTransactionList_Previews: PreviewProvider {
    static let transctionListVM: TransactionListViewModel = {
        let tranactionListVM = TransactionListViewModel()
        tranactionListVM.transactions = transactionListPreviewDta
        
        return tranactionListVM
    }()
    
    static var previews: some View {
        Group {
            RecentTransactionList()
            RecentTransactionList()
                .preferredColorScheme(.dark)
        }
        .environmentObject(transctionListVM)
    }
}
