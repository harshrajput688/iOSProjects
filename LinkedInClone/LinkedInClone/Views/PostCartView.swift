//
//  PostCartView.swift
//  LinkedInClone
//
//  Created by Harsh Rajput on 04/05/23.
//

import SwiftUI


var samplePostData = PostData(id: 1, image: "02", title: "Harsh Rajput", followers: 139, profileImage: "6")

struct SocialView{
    var id: Int
    var image: String
    var title: String
}

var socialView: [SocialView] = [
    .init(id: 0, image: "hand.thumbsup", title: "Like"),
    .init(id: 1, image: "text.bubble", title: "Comment"),
    .init(id: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(id: 3, image: "paperplane.fill", title: "Send")
]

struct PostCartView: View {
    var data: PostData
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            
            HStack(alignment: .center){
                Image(data.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .leading)
                
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                        .foregroundColor(.black)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            
            Text("Looking for a new Course on iOS with Swift UI, you are already at a great place.")
                .padding(.horizontal)
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            
            Divider()
        }
    }
}

struct PostCartView_Previews: PreviewProvider {
    static var previews: some View {
        PostCartView(data : samplePostData)
    }
}
