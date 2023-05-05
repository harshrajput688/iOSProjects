//
//  ProfileAndPostView.swift
//  LinkedInClone
//
//  Created by Harsh Rajput on 05/05/23.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading){
            SearchBar()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Share a Post")
            }.padding(.horizontal)
            Divider()
            
            HStack{
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("Photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("Photo")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("Photo")
            }.padding(.horizontal)
        }
    }
}

struct ProfileAndPostView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAndPostView()
    }
}
