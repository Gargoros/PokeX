//
//  GenerationI.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - GenerationI
struct GenerationI: Codable {
    let redBlue: RedBlue?
    let yellow:  RedBlue?

    enum CodingKeys: String, CodingKey {
        case redBlue = "red-blue"
        case yellow  = "yellow"
    }
}
