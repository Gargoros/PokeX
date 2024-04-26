//
//  GenerationIi.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - GenerationIi
struct GenerationIi: Codable {
    let crystal: Crystal?
    let gold:    Gold?
    let silver:  Gold?

    enum CodingKeys: String, CodingKey {
        case crystal = "crystal"
        case gold    = "gold"
        case silver  = "silver"
    }
}
