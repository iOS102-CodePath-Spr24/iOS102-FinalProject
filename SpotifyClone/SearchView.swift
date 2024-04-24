//
//  SearchView.swift
//  SpotifyClone
//
//  Created by Aaron Garman on 4/24/24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchTxt = ""
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("Search")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                    Spacer()
                        .frame(width: 250)
                } // hstack
                ZStack {
                    Rectangle()
                        .frame(width: 375, height: 50)
                        .background(.white)
                        .foregroundColor(.white)
                        .cornerRadius(10.0)
                    TextField("What do you want to listen to?", text: $searchTxt)
                        .background(.white)
                        .frame(width: 375, height: 100)
                        .font(.title2)
                        //.bold()
                        //.padding(20)
                } // zstack
                Spacer()
            } // vstack
        } // zstack
    } // body
} // struct

#Preview {
    SearchView()
}
