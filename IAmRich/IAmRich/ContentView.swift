//
//  ContentView.swift
//  IAmRich
//
//  Created by Harsh Rajput on 07/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemTeal)
                .ignoresSafeArea(edges: .all)
            VStack{
                Text("I am Rich")
                    .font(.system(size: 40))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color.white)
                Image("diamond", bundle: nil)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        }
    }
}

#Preview {
    ContentView()
}
