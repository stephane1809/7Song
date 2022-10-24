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
    let tracks: TracksModel

    init(id: Int, title: String, tracks: TracksModel) {
        self.id = id
        self.title = title
        self.tracks = tracks
    }
}

struct TracksModel: Codable, Equatable {
    let data: [DataModel]

    init(data: [DataModel]) {
        self.data = data
    }
}

struct DataModel: Codable, Equatable {
    let title: String
    let id: Int
    let link: String
    init(title: String, id: Int, link: String) {
        self.title = title
        self.id = id
        self.link = link
    }
}
