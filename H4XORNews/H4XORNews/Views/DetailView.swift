//
//  DetailView.swift
//  H4XORNews
//
//  Created by Harsh Rajput on 07/01/24.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

