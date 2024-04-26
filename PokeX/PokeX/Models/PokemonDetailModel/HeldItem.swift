//
//  HeldItem.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - HeldItem
struct HeldItem: Codable {
    let item:           Species?
    let versionDetails: [VersionDetail]?

    enum CodingKeys: String, CodingKey {
        case item           = "item"
        case versionDetails = "version_details"
    }
}
