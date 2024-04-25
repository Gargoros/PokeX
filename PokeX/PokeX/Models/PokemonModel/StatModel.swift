//
//  StatModel.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 25.04.24.
//

import Foundation

// MARK: - Stat
struct Stat: Codable {
    let baseStat: Int
    let effort: Int
    let stat: Species

    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort = "effort"
        case stat = "stat"
    }
}
