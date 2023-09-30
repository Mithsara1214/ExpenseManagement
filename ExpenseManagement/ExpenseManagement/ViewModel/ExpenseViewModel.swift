//
//  ExpenseViewModel.swift
//  ExpenseManagement
//
//  Created by Asela Wadugedara on BE 2566-09-28.
//

import SwiftUI

class ExpenseViewModel: ObservableObject{
    @Published var startDate: Date = Date()
    @Published var endDate: Date = Date()
    @Published var currentMonthStartDate: Date = Date()
    
    init(){
        let calender = Calendar.current
        let components = calender.dateComponents([.year,.month], from: Date())
        
        startDate = calender.date(from: components)!
        currentMonthStartDate = calender.date(from: components)!
    }
    @Published var expenses: [Expense] = sample_expenses
    
    func currentMonthDateString()->String{
        return currentMonthStartDate.formatted(date: .abbreviated, time: .omitted) + " - " +
        Date().formatted(date: .abbreviated, time: .omitted)
    }
    
    func convertExpensesToCurrency(expenses: [Expense], type: ExpenseType = .all)->String{
        var value: Double = 0
        value = expenses.reduce(0, { partialResult, expense in
            return partialResult + (type == .all ? (expense.type == .income ? expense.amount : -expense.amount) : (expense.type == type ? expense.amount : 0))
        })
        
        return convertNumberToPrice(value: value)
                                
}
    func convertNumberToPrice(value: Double)->String{
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        return formatter.string(from: .init(value: value)) ?? "$0.00"
    }
}
