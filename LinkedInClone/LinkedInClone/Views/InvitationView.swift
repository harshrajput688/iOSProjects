//
//  InvitationView.swift
//  LinkedInClone
//
//  Created by Harsh Rajput on 04/05/23.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Rahul Singh", position: "SDE Amazon", mutual: 12, image: "01")

struct InvitationView: View {
    var Data : NetworkModel
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Image(Data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 80, height: 80, alignment: .leading)
            
            VStack(alignment: .leading){
                Text("\(Data.name)")
                    .font(.body)
                    .foregroundColor(.black)
                Text("\(Data.position)")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                Text("\(Data.mutual) mutual Connections")
                    .foregroundColor(.gray)
                    .font(.caption)
                    
            }.frame(width: 150, height: 20, alignment: .leading)
            
            HStack{
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.gray)
                
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.blue).opacity(0.8)
                    
            }.padding(.horizontal)
        }.frame(width: .infinity, height: .infinity)
            .padding(.horizontal)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(Data: sampleData)
           
    }
}
