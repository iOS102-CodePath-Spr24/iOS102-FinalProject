//
//  Playlist.swift
//  SpotifyClone
//
//  Created by Aaron Garman on 4/17/24.
//

import Foundation

struct Playlist: Identifiable {
    //var id: ObjectIdentifier // change n add identifier stuff like parks?
    let id: String
    let name: String
    //let songs: [Song]
    let numSongs: Int
}
