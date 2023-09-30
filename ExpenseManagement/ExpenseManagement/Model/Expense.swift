//
//  Expense.swift
//  ExpenseManagement
//
//  Created by Asela Wadugedara on BE 2566-09-28.
//

import SwiftUI

struct Expense: Identifiable, Hashable{
    var id = UUID().uuidString
    var remark: String
    var amount: Double
    var date: Date
    var type: ExpenseType
    var color: String
}

enum ExpenseType: String{
    case income = "Income"
    case expense = "expenses"
    case all = "ALL"
}

var sample_expenses: [Expense] = [
    Expense(remark: "Magic Keybpard", amount: 99, date: Date(timeIntervalSince1970: 1652987245), type: .expense, color: "Yello"),
    Expense(remark: "Keybpard", amount: 99, date: Date(timeIntervalSince1970: 1652987245), type: .expense, color: "red"),
    Expense(remark: "Test", amount: 1000, date: Date(timeIntervalSince1970: 1652987245), type: .expense, color: "green"),
    Expense(remark: "Pen", amount: 99, date: Date(timeIntervalSince1970: 1652987245), type: .expense, color: "blue"),
    Expense(remark: "Camera", amount: 99, date: Date(timeIntervalSince1970: 1652987245), type: .expense, color: "brown"),
    Expense(remark: "Display", amount: 99, date: Date(timeIntervalSince1970: 1652987245), type: .expense, color: "orange")
]
