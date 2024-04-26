//
//  GameIndex.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - GameIndex
struct GameIndex: Codable {
    let gameIndex: Int?
    let version:   Species?

    enum CodingKeys: String, CodingKey {
        case gameIndex = "game_index"
        case version   = "version"
    }
}
