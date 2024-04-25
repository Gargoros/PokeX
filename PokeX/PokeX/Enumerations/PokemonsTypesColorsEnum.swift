//
//  PokemonsTypesColorsEnum.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 25.04.24.
//

import SwiftUI

enum PokemonsTypesColorsEnum {
    case normal
    case fighting
    case flying
    case poison
    case ground
    case rock
    case bug
    case ghost
    case steel
    case stellar
    case fire
    case water
    case grass
    case electric
    case psychic
    case ice
    case dragon
    case dark
    case fairy
    case unknown
    
    init(type: String){
        switch type {
        case PokeXConstants.PokemonsTypes.normal: 
            self = .normal
        case PokeXConstants.PokemonsTypes.fighting: 
            self = .fighting
        case PokeXConstants.PokemonsTypes.flying:
            self = .flying
        case PokeXConstants.PokemonsTypes.poison:
            self = .poison
        case PokeXConstants.PokemonsTypes.ground:
            self = .ground
        case PokeXConstants.PokemonsTypes.rock:
            self = .rock
        case PokeXConstants.PokemonsTypes.bug:
            self = .bug
        case PokeXConstants.PokemonsTypes.ghost:
            self = .ghost
        case PokeXConstants.PokemonsTypes.steel:
            self = .steel
        case PokeXConstants.PokemonsTypes.stellar:
            self = .stellar
        case PokeXConstants.PokemonsTypes.fire:
            self = .fire
        case PokeXConstants.PokemonsTypes.water:
            self = .water
        case PokeXConstants.PokemonsTypes.grass:
            self = .grass
        case PokeXConstants.PokemonsTypes.electric:
            self = .electric
        case PokeXConstants.PokemonsTypes.psychic:
            self = .psychic
        case PokeXConstants.PokemonsTypes.ice:
            self = .ice
        case PokeXConstants.PokemonsTypes.dragon:
            self = .dragon
        case PokeXConstants.PokemonsTypes.dark:
            self = .dark
        case PokeXConstants.PokemonsTypes.fairy:
            self = .fairy
        default:
            self = .unknown
        }
    }
    
    var typeColor: Color {
        switch self {
        case .normal:
            return PokeXConstants.PokemonsTypesColors.appNormalColor
        case .fighting:
            return PokeXConstants.PokemonsTypesColors.appFightingColor
        case .flying:
            return PokeXConstants.PokemonsTypesColors.appFlyingColor
        case .poison:
            return PokeXConstants.PokemonsTypesColors.appPoisonColor
        case .ground:
            return PokeXConstants.PokemonsTypesColors.appGroundColor
        case .rock:
            return PokeXConstants.PokemonsTypesColors.appRockColor
        case .bug:
            return PokeXConstants.PokemonsTypesColors.appBugColor
        case .ghost:
            return PokeXConstants.PokemonsTypesColors.appGhostColor
        case .steel:
            return PokeXConstants.PokemonsTypesColors.appSteelColor
        case .stellar:
            return PokeXConstants.PokemonsTypesColors.appStellarColor
        case .fire:
            return PokeXConstants.PokemonsTypesColors.appFireColor
        case .water:
            return PokeXConstants.PokemonsTypesColors.appWaterColor
        case .grass:
            return PokeXConstants.PokemonsTypesColors.appGrassColor
        case .electric:
            return PokeXConstants.PokemonsTypesColors.appElectricColor
        case .psychic:
            return PokeXConstants.PokemonsTypesColors.appPsychicColor
        case .ice:
            return PokeXConstants.PokemonsTypesColors.appIceColor
        case .dragon:
            return PokeXConstants.PokemonsTypesColors.appDragonColor
        case .dark:
            return PokeXConstants.PokemonsTypesColors.appDarkColor
        case .fairy:
            return PokeXConstants.PokemonsTypesColors.appFairyColor
        case .unknown:
            return PokeXConstants.PokemonsTypesColors.appUnknownColor
        }
    }
}
