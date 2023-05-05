//
//  SearchBar.swift
//  LinkedInClone
//
//  Created by Harsh Rajput on 04/05/23.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center, spacing: 5){
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 50, height: 50)
                
            //Search Bar
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.blue.opacity(0.15))
                .frame(width: 270, height: 30)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                        Spacer()
                            
                    }.padding()
                )
            
            //messageBox
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
        }.padding(.top)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
