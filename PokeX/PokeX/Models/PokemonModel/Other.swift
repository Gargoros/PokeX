//
//  Other.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - Other
struct Other: Codable {
    let dreamWorld:      DreamWorld?
    let home:            Home?
    let officialArtwork: OfficialArtwork?
    let showdown:        Sprites?

    enum CodingKeys: String, CodingKey {
        case dreamWorld      = "dream_world"
        case home            = "home"
        case officialArtwork = "official-artwork"
        case showdown        = "showdown"
    }
}
