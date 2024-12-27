//
//  SidebarView.swift
//  taskManager
//
//  Created by Yash Bhardwaj on 27/12/24.
//

import SwiftUI

struct SidebarView: View {
    
    let userCreatedGroups : [TaskGroup]
    @State private var selection =  TaskSection.all
    
    var body: some View {
        List{
            Section("Favourites"){
                ForEach(TaskSection.allCases){selection in
                    Label(selection.displayName,
                          systemImage: selection.iconName)
                    .tag(selection)
                }
            }
            
            Section("Your Groups") {
                ForEach(userCreatedGroups){group in
                    Label(group.title, systemImage: "folder")
                }
            }
            
            
        }
    }
}

#Preview {
    SidebarView(userCreatedGroups: TaskGroup.examples())
    .listStyle(.sidebar)
}
