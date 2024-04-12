//
//  ItemView.swift
//  TodoList
//
//  Created by Benjamin Lavallee on 2024-04-05.
//

import SwiftUI
import SwiftData

struct ItemView: View {
    //MARK: Stored properties
    @Bindable var currentItem: TodoItem

    //MARK: Computed properties
    
    // Returns the button's user interface...
    var body: some View {
        Label(
            title: {
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                // Tap to mark
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
                }
            )
        }
    }


#Preview {
    
    let container = TodoItem.preview
    
    return List {
        ItemView(currentItem: TodoItem.someItem)
        ItemView(currentItem: TodoItem.anotherItem)
    }
    .modelContainer(container)
    
}

