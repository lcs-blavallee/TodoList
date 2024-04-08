//
//  ItemView.swift
//  TodoList
//
//  Created by Benjamin Lavallee on 2024-04-05.
//

import SwiftUI

struct ItemView: View {
    //MARK: Stored properties
    let currentItem: TodoItem
    
    //MARK: Computed properties
    
    // Returns the button's user interface...
    var body: some View {
        HStack {
            
            Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                .foregroundColor(Color.blue)
            
            VStack (alignment: .leading) {
                
                // First layer
                Text(currentItem.title)
                    .foregroundStyle(.black)
                
            }
        }
    }
}


#Preview {
    List {
        ItemView(currentItem: firstItem)
        ItemView(currentItem: secondItem)
        ItemView(currentItem: thirdItem)
    }
}
