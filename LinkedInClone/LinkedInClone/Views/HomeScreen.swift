//
//  HomeScreen.swift
//  LinkedInClone
//
//  Created by Harsh Rajput on 05/05/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20){
            ProfileAndPostView()
            PostView()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
