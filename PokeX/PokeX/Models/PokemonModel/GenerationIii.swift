//
//  GenerationIii.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - GenerationIii
struct GenerationIii: Codable {
    let emerald:          OfficialArtwork?
    let fireredLeafgreen: Gold?
    let rubySapphire:     Gold?

    enum CodingKeys: String, CodingKey {
        case emerald          = "emerald"
        case fireredLeafgreen = "firered-leafgreen"
        case rubySapphire     = "ruby-sapphire"
    }
}
