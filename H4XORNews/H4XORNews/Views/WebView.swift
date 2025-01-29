//
//  WebView.swift
//  H4XORNews
//
//  Created by Harsh Rajput on 07/01/24.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView  {
        let wkwebView = WKWebView()
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                wkwebView.load(request)
            }
        }
        
        return wkwebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
