//
//  RedBlue.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - RedBlue
struct RedBlue: Codable {
    let backDefault:      String?
    let backGray:         String?
    let backTransparent:  String?
    let frontDefault:     String?
    let frontGray:        String?
    let frontTransparent: String?

    enum CodingKeys: String, CodingKey {
        case backDefault      = "back_default"
        case backGray         = "back_gray"
        case backTransparent  = "back_transparent"
        case frontDefault     = "front_default"
        case frontGray        = "front_gray"
        case frontTransparent = "front_transparent"
    }
}
