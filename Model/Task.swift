//
//  Task.swift
//  taskManager
//
//  Created by Yash Bhardwaj on 23/12/24.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var IsCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, IsCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.IsCompleted = IsCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Buy Groceries", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
    
    static func examples() -> [Task] {
        [
            Task(title: "something to do"),
            Task(title: "something to think about", IsCompleted: true, dueDate: Date()),
            Task(title: "TestString", IsCompleted: false, dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!, details: "bruh"),
            Task(title: "more test data for validation lol", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!),
            Task(title: "okay you get the idea")
        ]
        
    }
}
