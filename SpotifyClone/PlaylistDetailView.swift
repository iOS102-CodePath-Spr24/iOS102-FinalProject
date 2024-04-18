//
//  PlaylistDetailView.swift
//  SpotifyClone
//
//  Created by Aaron Garman on 4/18/24.
//

import SwiftUI

struct PlaylistDetailView: View {
    
    @State private var songs: [Song] = []
    
    var values: [Int] = Array(0..<20) // for testing only
 
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView {
                LazyVStack {
                    ForEach(values, id: \.self) { value in
                            SongRow()
                    } // foreach loop
                } // lazy v stack
            } // scrollview
        } // z stack
    } // body
} // struct

struct SongRow: View {
    var body: some View {
        ZStack {
            Rectangle()
            .frame(width: 350, height: 75)
            HStack(spacing: 20) {
                Rectangle()
                    .frame(width: 75, height: 75)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                //Spacer()
                VStack {
                    Text("Song Name")
                        .foregroundStyle(Color.white)
                        .font(.title3)
                        .bold()
                        Text("Artist")
                        .foregroundStyle(Color.white)
                } //vstack
                Spacer()
            } // h stack
        } // z stack */
    }
}

#Preview {
    PlaylistDetailView()
}
