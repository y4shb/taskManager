//
//  TaskListView.swift
//  taskManager
//
//  Created by Yash Bhardwaj on 27/12/24.
//

import SwiftUI

struct TaskListView: View {
    
    let title: String
    let tasks: [Task]
    
    
    var body: some View {
        List(tasks) { task in
            HStack{
                Image(systemName: task.IsCompleted ? "largecircle.fill.circle" : "circle")
                Text(task.title)
            }
        }
    }
}

#Preview {
    TaskListView(title: "All", tasks: Task.examples())
}
