//
//  ContentView.swift
//  H4XORNews
//
//  Created by Harsh Rajput on 07/01/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationStack{
            List(networkManager.posts){ post in
                NavigationLink {
                    DetailView(url: post.url)
                } label: {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4XOR News")
            
            
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}




