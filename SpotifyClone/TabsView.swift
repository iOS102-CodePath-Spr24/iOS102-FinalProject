//
//  TabsView.swift
//  SpotifyClone
//
//  Created by Aaron Garman on 4/20/24.
//

import SwiftUI

struct TabsView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            PlaylistDetailView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            PlaylistDetailView()
                .tabItem {
                    Label("YourLibrary", systemImage: "books.vertical")
                }
        } // tab
        .accentColor(.white)
    }
}

#Preview {
    TabsView()
}

// why is this file shown as diff above, opaque swift symbol? test if because not pushed?
