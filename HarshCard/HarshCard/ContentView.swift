//
//  ContentView.swift
//  HarshCard
//
//  Created by Harsh Rajput on 07/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(UIColor(red: 0.09, green: 0.63, blue: 0.52, alpha: 1.00))
                .ignoresSafeArea()
            VStack{
                VStack {
                    Image("harsh")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 4)
                        )
                    Text("Harsh Rajput")
                        .foregroundStyle(.white)
                        .font(Font.custom("Pacifico-Regular", size: 40))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("iOS Developer")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 25))
                    Divider()
                    InfoView(title: "+91 80060 88359", imageName: "phone.fill")
                    InfoView(title: "hr973147@gmail.com", imageName: "envelope.fill").padding(.vertical)
                        
                }
            }
        }
    }
}

#Preview {
    ContentView()
}


