//
//  GenerationIv.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - GenerationIv
struct GenerationIv: Codable {
    let diamondPearl:        Sprites?
    let heartgoldSoulsilver: Sprites?
    let platinum:            Sprites?

    enum CodingKeys: String, CodingKey {
        case diamondPearl        = "diamond-pearl"
        case heartgoldSoulsilver = "heartgold-soulsilver"
        case platinum            = "platinum"
    }
}
