//
//  PokemonsModel.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - Pokemons
struct Pokemons: Codable {
    let results: [PokemonEntry]?
}

// MARK: - Result
struct PokemonEntry: Codable {
    let name: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
}
