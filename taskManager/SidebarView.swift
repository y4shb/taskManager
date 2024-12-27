//
//  SidebarView.swift
//  taskManager
//
//  Created by Yash Bhardwaj on 27/12/24.
//

import SwiftUI

struct SidebarView: View {
    
    let userCreatedGroups : [TaskGroup]
    @Binding var selection:   TaskSection
    
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
                        .tag(group)
                }
            }
            
            
        }
    }
}

#Preview {
    SidebarView(userCreatedGroups: TaskGroup.examples(), selection: .constant(.all))
    .listStyle(.sidebar)
}
