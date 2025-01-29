//
//  InfoView.swift
//  HarshCard
//
//  Created by Harsh Rajput on 07/01/24.
//

import SwiftUI

struct InfoView: View {
    let title: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(Color.white)
            .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundStyle(Color(uiColor: UIColor(red: 0.09, green: 0.63, blue: 0.52, alpha: 1.00)))
               
                    Text(title)
                        .fontWeight(.medium)
                }
            ).padding(.horizontal)
    }
}

#Preview {
    InfoView(title: "+91 80060 88359", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
}
