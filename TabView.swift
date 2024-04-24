//
//  TabView.swift
//  SpotifyClone
//
//  Created by Aaron Garman on 4/20/24.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        
        TabView {
            PlaylistDetailView()
                .tabItem {
                    Label("Everyone", systemImage: "person.3")
                }
            PlaylistDetailView()
                .tabItem {
                    Label("Contacted", systemImage: "checkmark.circle")
                }
            PlaylistDetailView()
                .tabItem {
                    Label("Uncontacted", systemImage: "questionmark.diamond")
                }
        } // tab
    }
}

#Preview {
    TabsView()
}
