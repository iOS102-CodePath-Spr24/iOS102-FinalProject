//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Aaron Garman on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playlists: [Playlist] = []
    
    var values: [Int] = Array(0..<20) // for testing only
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    //let playlist1 = Playlist(id: "p1", name: playlist1, numSongs: 0)
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                ScrollView {
                    LazyVStack {
                        ForEach(values, id: \.self) { value in
                            NavigationLink(value: value) {
                                PlaylistRow()
                          } // nav link
                          .foregroundColor(.black)
                        } // foreach loop
                    } // lazy v stack
                } // scrollview
                .navigationTitle("Your Library")
                .navigationDestination(for: Int.self) { value in
                    PlaylistDetailView()
                } // nav destintation
            } // z stack
        } // nav stack
    } // body
} // content view


struct PlaylistRow: View {
    var body: some View {
        ZStack {
            Rectangle()
            .frame(width: 350, height: 100)
            HStack(spacing: 20) {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                //Spacer()
                VStack {
                    Text("Playlist Name")
                        .foregroundStyle(Color.white)
                        .font(.title3)
                        .bold()
                        Text("Playlist - Username")
                        .foregroundStyle(Color.white)
                } //vstack
                Spacer()
            } // h stack
        } // z stack */
    }
}

// why if change anything in playlist row struct affect nav stuff?
// change name of this file?

#Preview {
    ContentView()
}
