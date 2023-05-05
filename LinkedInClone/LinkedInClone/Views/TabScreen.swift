//
//  TabScreen.swift
//  LinkedInClone
//
//  Created by Harsh Rajput on 05/05/23.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            MyNetworkScreen()
                .tabItem{
                    Image(systemName: "person.2.fill")
                    Text("MyNetwork")
                }
            Text("Post")
                .tabItem{
                    Image(systemName: "plus.app.fill")
                    Text("Post")
                }
            Text("Notification")
                .tabItem{
                    Image(systemName: "bell.badge.fill")
                    Text("Notification")
                }
            Text("Jobs")
                .tabItem{
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
        }
    }
}

struct TabScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
