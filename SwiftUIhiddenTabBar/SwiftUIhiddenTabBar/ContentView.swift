//
//  ContentView.swift
//  SwiftUIhiddenTabBar
//
//  Created by Harsh Rajput on 09/01/25.
//

import SwiftUI

struct ContentView: View {
    @State var showTab: Bool = true
    var body: some View {
        ScrollView{
            LazyVGrid(columns: Array(repeating: GridItem(), count: 2), content: {
                ForEach(0..<15){_ in 
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.gray.tertiary)
                        .frame(height: 200)
                }
            })
        }
        .safeAreaPadding(.horizontal, 10).scrollIndicators(.hidden)
        .overlay(alignment: .bottom) {
            if showTab{
                CustomTabBar()
                    .padding(.horizontal, 20)
                    .transition(.offset(y: 300))
            }
        }
        .onScrollGeometryChange(for: CGFloat.self) { geometry in
            geometry.contentOffset.y
        } action: { oldValue, newValue in
            if newValue > oldValue{
                withAnimation {
                    showTab = false
                }
            }else{
                withAnimation {
                    showTab = true
                }
            }
        }

    }
}

struct CustomTabBar: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 70)
            .foregroundStyle(.black.opacity(0.7))
    }
}

#Preview {
    ContentView()
}
