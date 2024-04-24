//
//  TabScreenView.swift
//  SpotifyClone
//
//  Created by Aaron Garman on 4/20/24.
//

import SwiftUI

struct TabScreenView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            ContentView()
                .tabItem {
                    Label("YourLibrary", systemImage: "books.vertical")
                }
        } // tabview
        .accentColor(.white)
    } // body
} // struct

#Preview {
    TabScreenView()
}
