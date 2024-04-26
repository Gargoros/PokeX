//
//  OfficialArtwork.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - OfficialArtwork
struct OfficialArtwork: Codable {
    let frontDefault: String?
    let frontShiny:   String?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontShiny   = "front_shiny"
    }
}
