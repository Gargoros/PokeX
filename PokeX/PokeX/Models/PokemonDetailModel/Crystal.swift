//
//  Crystal.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - Crystal
struct Crystal: Codable {
    let backDefault:           String?
    let backShiny:             String?
    let backShinyTransparent:  String?
    let backTransparent:       String?
    let frontDefault:          String?
    let frontShiny:            String?
    let frontShinyTransparent: String?
    let frontTransparent:      String?

    enum CodingKeys: String, CodingKey {
        case backDefault           = "back_default"
        case backShiny             = "back_shiny"
        case backShinyTransparent  = "back_shiny_transparent"
        case backTransparent       = "back_transparent"
        case frontDefault          = "front_default"
        case frontShiny            = "front_shiny"
        case frontShinyTransparent = "front_shiny_transparent"
        case frontTransparent      = "front_transparent"
    }
}
