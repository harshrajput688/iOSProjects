//
//  ContentView.swift
//  DiceRoll
//
//  Created by Harsh Rajput on 07/01/24.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNo: Int
    @State var rightDiceNo: Int
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(whichDice: leftDiceNo)
                    DiceView(whichDice: rightDiceNo)
                }.padding()
                Spacer()
                Button {
                    leftDiceNo = Int.random(in: 1...6)
                    rightDiceNo = Int.random(in: 1...6)
                } label: {
                    Text("Roll")
                        .bold()
                        .font(.system(size: 40))
                        .foregroundStyle(.white)
                }
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.red)
                )

            }
        }
    }
}

#Preview {
    ContentView(leftDiceNo: 3, rightDiceNo: 5)
}

struct DiceView: View {
    let whichDice: Int
    var body: some View {
        Image("dice\(whichDice)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.horizontal)
    }
}
