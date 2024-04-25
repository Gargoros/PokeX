//
//  CriesModel.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 25.04.24.
//

import Foundation

// MARK: - Cries
struct Cries: Codable {
    let latest: String
    let legacy: String

    enum CodingKeys: String, CodingKey {
        case latest = "latest"
        case legacy = "legacy"
    }
}
