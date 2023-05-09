//
//  ListViewModel.swift
//  ToDoApp
//
//  Created by Harsh Rajput on 06/05/23.
//

import Foundation

class ListViewModel: ObservableObject{
    
    @Published var items:[ItemModel] = []{
        didSet{
            saveItem()
        }
    }
    
    init(){
        getItem()
    }
    
    let itemKey: String = "item_List"
    
    func addItem(title: String){
        let newItem = ItemModel(Title: title, IsCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.updateCompleted()
        }
    }
    
    func deleteItem(indexSet : IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItems(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func getItem(){
        guard let data = UserDefaults.standard.data(forKey: itemKey) else{
            return
        }
        
        guard let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data) else{return}
        
        self.items = savedItems
    }
    
    func saveItem(){
        
        if let encodeData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodeData, forKey: itemKey)
        }
    }
}
