//
//  _SongTests.swift
//  7SongTests
//
//  Created by Stephane Girão Linhares on 11/10/22.
//

import XCTest
@testable import _Song

final class SongTests: XCTestCase {

//    func test_trackModelInit_dataModelArray() {
//        let emptyArray: [DataModel] = []
//        let trackStruct = TracksModel(data: emptyArray)
//        XCTAssertEqual(trackStruct.data.count, emptyArray.count)
//    }

    func test_dataModelInit_validDataModel() {
        let title: String = "Love of My Life"
        let id: Int = 1234
        let link: String = "https://..."

        let validDataModel = DataModel(
            title: title,
            id: id,
            link: link
        )
        XCTAssertEqual(validDataModel.title, title)
        XCTAssertEqual(validDataModel.id, id)
        XCTAssertEqual(validDataModel.link, link)
    }
    func test_albumModelInit_validAlbumModel() {
        let id: Int = 4321
        let title: String = "Queen"
        let emptyArray: [DataModel] = []
        let tracks: TracksModel = TracksModel(data: emptyArray)
        let validAlbumModel = AlbumModel(
            id: id,
            title: title,
            tracks: tracks
        )
        XCTAssertEqual(validAlbumModel.id, id)
        XCTAssertEqual(validAlbumModel.title, title)
        XCTAssertEqual(validAlbumModel.tracks.data.count, tracks.data.count)
    }

}
