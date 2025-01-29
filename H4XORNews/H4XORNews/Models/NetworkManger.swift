//
//  NetworkManger.swift
//  H4XORNews
//
//  Created by Harsh Rajput on 07/01/24.
//

import Foundation
class NetworkManager: ObservableObject{
    @Published var posts = [Post]()
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, responce, error in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                            let data = try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async{
                                self.posts = data.hits
                            }
                        } catch let error {
                            print("Error in decoding \(error)")
                        }                    }
                }
            }
            task.resume()
        }
    }
}

