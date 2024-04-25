//
//  TypeElementModel.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 25.04.24.
//

import Foundation

// MARK: - TypeElement
struct TypeElement: Codable {
    let slot: Int
    let type: Species

    enum CodingKeys: String, CodingKey {
        case slot = "slot"
        case type = "type"
    }
}
