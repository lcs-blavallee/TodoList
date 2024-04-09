//
//  ItemView.swift
//  TodoList
//
//  Created by Benjamin Lavallee on 2024-04-05.
//

import SwiftUI

struct ItemView: View {
    //MARK: Stored properties
    @Binding var currentItem: TodoItem
    
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
    List {
        ItemView(currentItem: Binding.constant(firstItem))
        ItemView(currentItem: Binding.constant(secondItem))
        ItemView(currentItem: Binding.constant(thirdItem))
    }
}
