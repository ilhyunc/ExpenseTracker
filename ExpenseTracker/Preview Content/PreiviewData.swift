//
//  PreiviewData.swift
//  ExpenseTracker
//
//  Created by Joe on 2024-07-10.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "07/10/2024", institution: "Desjardins", account: "Visa Desjardins", merchant: "Apple", amount: 11.49, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
