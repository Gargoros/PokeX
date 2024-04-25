//
//  SpeciesModel.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 25.04.24.
//

import Foundation

// MARK: - Species
struct Species: Codable {
    let name: String
    let url: String

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
}
