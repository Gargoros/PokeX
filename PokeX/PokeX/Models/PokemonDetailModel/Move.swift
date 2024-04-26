//
//  Move.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - Move
struct Move: Codable {
    let move:                Species?
    let versionGroupDetails: [VersionGroupDetail]?

    enum CodingKeys: String, CodingKey {
        case move                = "move"
        case versionGroupDetails = "version_group_details"
    }
}
