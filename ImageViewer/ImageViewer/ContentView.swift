//
//  ContentView.swift
//  ImageViewer
//
//  Created by Harsh Rajput on 04/01/25.
//

import SwiftUI


struct ImageModel: Identifiable{
    let id: String = UUID().uuidString
    let altText: String
    let link: String
}

let sampleImage: [ImageModel] = [
    .init(altText: "Old Man", link: "https://media.istockphoto.com/id/1798633416/photo/senior-man-with-smartphone-and-credit-card-at-home-fraud-prevention-concept.jpg?s=1024x1024&w=is&k=20&c=OZJmUxqaUTZwv0rFc3TZ_PpwP6ECP94buAC781xT1rA="),
    .init(altText: "Old Man", link: "https://cdn.pixabay.com/photo/2018/04/26/16/39/beach-3352363_1280.jpg"),
    .init(altText: "Old Man", link: "https://media.istockphoto.com/id/1798633416/photo/senior-man-with-smartphone-and-credit-card-at-home-fraud-prevention-concept.jpg?s=1024x1024&w=is&k=20&c=OZJmUxqaUTZwv0rFc3TZ_PpwP6ECP94buAC781xT1rA="),
    .init(altText: "Old Man", link: "https://media.istockphoto.com/id/1798633416/photo/senior-man-with-smartphone-and-credit-card-at-home-fraud-prevention-concept.jpg?s=1024x1024&w=is&k=20&c=OZJmUxqaUTZwv0rFc3TZ_PpwP6ECP94buAC781xT1rA="),
    .init(altText: "Old Man", link: "https://media.istockphoto.com/id/1798633416/photo/senior-man-with-smartphone-and-credit-card-at-home-fraud-prevention-concept.jpg?s=1024x1024&w=is&k=20&c=OZJmUxqaUTZwv0rFc3TZ_PpwP6ECP94buAC781xT1rA="),
    .init(altText: "Old Man", link: "https://media.istockphoto.com/id/1798633416/photo/senior-man-with-smartphone-and-credit-card-at-home-fraud-prevention-concept.jpg?s=1024x1024&w=is&k=20&c=OZJmUxqaUTZwv0rFc3TZ_PpwP6ECP94buAC781xT1rA="),
    .init(altText: "Old Man", link: "https://media.istockphoto.com/id/1798633416/photo/senior-man-with-smartphone-and-credit-card-at-home-fraud-prevention-concept.jpg?s=1024x1024&w=is&k=20&c=OZJmUxqaUTZwv0rFc3TZ_PpwP6ECP94buAC781xT1rA="),
]

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ImageViewer{
                    ForEach(sampleImage){image in
                        //Animation will work even if image is loading
                        AsyncImage(url: URL(string: image.link)){ image in
                            image.resizable()
                        }placeholder: {
                            Rectangle()
                                .fill(.gray.opacity(0.4))
                                .overlay{
                                    ProgressView()
                                        .tint(.blue)
                                        .scaleEffect(0.7 )
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                }
                        }
                        .containerValues(\.activeViewID, image.id)
                    }
                }overlay: {
                    OverlayView()
                }
            }
            .padding(15)
            .navigationTitle(Text("Image Gallery"))
        }
    }
}

//Overlay view
struct OverlayView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack{
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark.cirlce.fill")
                    .font(.title)
                    .foregroundStyle(.ultraThinMaterial)
                    .padding(10)
                    .contentShape(.rect)
            }
            .frame(width: .infinity, alignment: .leading)
            Spacer(minLength: 0)
        }
        .padding(15)
    }
}

#Preview {
    ContentView()
}
