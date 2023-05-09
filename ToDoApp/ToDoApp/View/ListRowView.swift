//
//  ListRowView.swift
//  ToDoApp
//
//  Created by Harsh Rajput on 09/05/23.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }.font(.title2)
            .padding(.vertical)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(Title: "Item 1", IsCompleted: true)
    static var item2 = ItemModel(Title: "Item 2", IsCompleted: true)
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }.previewLayout(.sizeThatFits)
    }
}
