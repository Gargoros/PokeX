
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let pokemon = try? JSONDecoder().decode(Pokemon.self, from: jsonData)

import Foundation

// MARK: - Pokemon
struct PokemonDetail: Codable {
    let abilities:              [Ability]?
    let baseExperience:         Int?
    let cries:                  Cries?
    let forms:                  [Species]?
    let gameIndices:            [GameIndex]?
    let height:                 Int?
    let heldItems:              [HeldItem]?
    let id:                     Int?
    let isDefault:              Bool?
    let locationAreaEncounters: String?
    let moves:                  [Move]?
    let name:                   String?
    let order:                  Int?
    let pastAbilities:          [JSONAny]?
    let pastTypes:              [JSONAny]?
    let species:                Species?
    let sprites:                Sprites?
    let stats:                  [Stat]?
    let types:                  [TypeElement]?
    let weight:                 Int?

    enum CodingKeys: String, CodingKey {
        case abilities              = "abilities"
        case baseExperience         = "base_experience"
        case cries                  = "cries"
        case forms                  = "forms"
        case gameIndices            = "game_indices"
        case height                 = "height"
        case heldItems              = "held_items"
        case id                     = "id"
        case isDefault              = "is_default"
        case locationAreaEncounters = "location_area_encounters"
        case moves                  = "moves"
        case name                   = "name"
        case order                  = "order"
        case pastAbilities          = "past_abilities"
        case pastTypes              = "past_types"
        case species                = "species"
        case sprites                = "sprites"
        case stats                  = "stats"
        case types                  = "types"
        case weight                 = "weight"
    }
}
