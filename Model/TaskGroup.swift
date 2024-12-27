//
//  TaskGroup.swift
//  taskManager
//
//  Created by Yash Bhardwaj on 23/12/24.
//

import Foundation

struct TaskGroup: Identifiable, Hashable{
    let id: UUID = UUID()
    var title: String
    let creationDate: Date?
    var tasks: [Task]
    
    
    init(title: String, tasks: [Task] = []) {
        self.title = title
        self.creationDate = Date()
        self.tasks = tasks
    }
    
    static func example() -> TaskGroup {
        let task1 = Task(title: "Buy Groceries")
        let task2 = Task(title: "Clean House")
        let task3 = Task(title: "Go to Gym")
        
        let group = TaskGroup(title: "Weekly Task", tasks: [task1, task2, task3])
        return group
    }
    
    static func examples() -> [TaskGroup] {
        let group1 = TaskGroup.example()
        let group2 = TaskGroup(title: "New List")
        return [group1, group2]
        
        
        
    }
}
