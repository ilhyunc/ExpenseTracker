//
//  TransactionList.swift
//  ExpenseTracker
//
//  Created by Joe on 2024-07-11.
//

import SwiftUI

struct TransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            List {
                // MARK: Transaction Groups
                ForEach(Array(transactionListVM.groupTransactionsByMonth()), id: \.key) { month, transactions in
                    Section {
                        // MARK: Transaction List
                        ForEach(transactions) { transaction in
                            TransactionRow(transaction: transaction)
                                .overlay(
                                    NavigationLink("", destination: {
//                                        TransactionView(transaction: transaction)
                                    })
                                        .opacity(0)
                                )
                        }
                    } header: {
                        // MARK: Transaction Month
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                }
            }
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let transactionListVM = TransactionListViewModel()
    transactionListVM.transactions = transactionListPreviewData
    
    return NavigationView {
        TransactionList()
            .environmentObject(transactionListVM)
    }
}

#Preview {
    let transactionListVM = TransactionListViewModel()
    transactionListVM.transactions = transactionListPreviewData
    
    return NavigationView {
        TransactionList()
            .preferredColorScheme(.dark)
            .environmentObject(transactionListVM)
    }
}
