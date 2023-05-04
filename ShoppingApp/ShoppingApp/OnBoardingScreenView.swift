//
//  OnBoardingScreenView.swift
//  ShoppingApp
//
//  Created by Harsh Rajput on 25/04/23.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer()
                Image("woman-drinking-fresh-fruit-juice")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                
                VStack(alignment: .leading,spacing: 10){
                    Text("Order your favourites Fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    
                    Text("Eat fresh Fruits and try to be healty")
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                }
                Spacer()
                
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10){
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Image(systemName: "chevron.right")
                            }.foregroundColor(.black)
                        )
                }
                Spacer()
            }
        }
    }
}

struct OnBoardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreenView()
    }
}
