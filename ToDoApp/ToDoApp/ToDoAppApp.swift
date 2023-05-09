//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Harsh Rajput on 05/05/23.
//

import SwiftUI

@main
struct ToDoAppApp: App {
    
    @StateObject var listModeld: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView(){
              ListView()
            }
            .environmentObject(listModeld)
        }
    }
}
