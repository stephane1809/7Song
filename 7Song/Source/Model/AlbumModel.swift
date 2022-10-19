//
//  AlbumModel.swift
//  7Song
//
//  Created by Stephane Girão Linhares on 18/10/22.
//

import UIKit

struct AlbumModel: Codable {
    let id: Int
    let title: String
    let tracks: TrackModel

    init(id: Int, title: String, tracks: TrackModel) {
        self.id = id
        self.title = title
        self.tracks = tracks
    }
}

struct TrackModel: Codable {
    let data: [DataModel]
}

struct DataModel: Codable {
    let title: String
    let id: Int
    init(title: String, id: Int) {
        self.title = title
        self.id = id
    }
}
