//
//  GenerationVii.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

// MARK: - GenerationVii
struct GenerationVii: Codable {
    let icons:             DreamWorld?
    let ultraSunUltraMoon: Home?

    enum CodingKeys: String, CodingKey {
        case icons             = "icons"
        case ultraSunUltraMoon = "ultra-sun-ultra-moon"
    }
}
