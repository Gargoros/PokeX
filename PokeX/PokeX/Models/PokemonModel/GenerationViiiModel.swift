//
//  GenerationViiiModel.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 25.04.24.
//

import Foundation

// MARK: - GenerationViii
struct GenerationViii: Codable {
    let icons: DreamWorld

    enum CodingKeys: String, CodingKey {
        case icons = "icons"
    }
}
