//
//  HomeView.swift
//  SpotifyClone
//
//  Created by Aaron Garman on 4/24/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("Home")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                    Spacer()
                        .frame(width: 250)
                } // hstack
                Spacer()
                    .frame(height: 25)
                HStack {
                    Text("Recently Played")
                        .foregroundColor(.white)
                        .font(.title2)
                    Spacer()
                        .frame(width: 175)
                } // hstack
                Spacer()
            } // vstack
        } // zstack
    } // body
} // struct

#Preview {
    HomeView()
}
