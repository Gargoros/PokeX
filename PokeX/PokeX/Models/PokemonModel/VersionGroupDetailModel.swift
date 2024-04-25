//
//  VersionGroupDetailModel.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 25.04.24.
//

import Foundation

// MARK: - VersionGroupDetail
struct VersionGroupDetail: Codable {
    let levelLearnedAt: Int
    let moveLearnMethod: Species
    let versionGroup: Species

    enum CodingKeys: String, CodingKey {
        case levelLearnedAt = "level_learned_at"
        case moveLearnMethod = "move_learn_method"
        case versionGroup = "version_group"
    }
}
