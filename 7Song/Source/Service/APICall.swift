//
//  APICall.swift
//  7Song
//
//  Created by Stephane Girão Linhares on 14/10/22.
//

import UIKit
import Foundation

final class APICall {
    static func GET() {
        if let url = URL(string: "https://api.deezer.com/album/302127") {
            URLSession.shared.dataTask(with: url) { data, _, error in
                if let data = data {
                    do {
                        let resposta = try JSONDecoder().decode(AlbumModel.self, from: data)
                        print(resposta)
                    } catch let error {
                        print(error)
                    }
                }
            }.resume()
        }
    }
}
