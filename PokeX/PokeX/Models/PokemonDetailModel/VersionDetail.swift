//
//  VersionDetail.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - VersionDetail
struct VersionDetail: Codable {
    let rarity:  Int?
    let version: Species?

    enum CodingKeys: String, CodingKey {
        case rarity  = "rarity"
        case version = "version"
    }
}
