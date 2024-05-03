//
//  PokeXConstants.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 21.04.24.
//

import Foundation
import SwiftUI

struct PokeXConstants {
    
    //MARK: - Strings
    struct Contents {
        static let berries    = "Berries"
        static let contests   = "Contests"
        static let encounters = "Encounters"
        static let evolution  = "Evolution"
        static let games      = "Games"
        static let items      = "Items"
        static let locations  = "Locations"
        static let machines   = "Machines"
        static let moves      = "Moves"
        static let pokemon    = "Pokémon"
    }
    static let contentsList = [
        Contents.berries,
        Contents.contests,
        Contents.encounters,
        Contents.evolution,
        Contents.games,
        Contents.items,
        Contents.locations,
        Contents.machines,
        Contents.moves,
        Contents.pokemon
    ]
    
    struct SectionsStrings {
        static let pokeX        = "PokéX"
        static let news         = "News"
        static let hiTrainer    = "Hi Trainer"
        static let categories   = "Categories"
        static let types        = "Types"
        static let regions      = "Regions"
        static let pokedex      = "PokéDex"
    }
    
    struct PokemonsTypes {
        static let normal   = "Normal"
        static let fighting = "Fighting"
        static let flying   = "Flying"
        static let poison   = "Poison"
        static let ground   = "Ground"
        static let rock     = "Rock"
        static let bug      = "Bug"
        static let ghost    = "Ghost"
        static let steel    = "Steel"
        static let stellar  = "Stellar"
        static let fire     = "Fire"
        static let water    = "Water"
        static let grass    = "Grass"
        static let electric = "Electric"
        static let psychic  = "Psychic"
        static let ice      = "Ice"
        static let dragon   = "Dragon"
        static let dark     = "Dark"
        static let fairy    = "Fairy"
        static let unknown  = "???"
    }
    static let pokemonsTypesList = [
        PokemonsTypes.normal,
        PokemonsTypes.fighting,
        PokemonsTypes.flying,
        PokemonsTypes.poison,
        PokemonsTypes.ground,
        PokemonsTypes.rock,
        PokemonsTypes.bug,
        PokemonsTypes.ghost,
        PokemonsTypes.steel,
        PokemonsTypes.stellar,
        PokemonsTypes.fire,
        PokemonsTypes.water,
        PokemonsTypes.grass,
        PokemonsTypes.electric,
        PokemonsTypes.psychic,
        PokemonsTypes.ice,
        PokemonsTypes.dragon,
        PokemonsTypes.dark,
        PokemonsTypes.fairy,
        PokemonsTypes.unknown,
        
    ]
    
    struct PokemonsCoreGames {
        //MARK: - Gen 1
        static let pocketMonstersRed         = "Pocket Monsters Red"
        static let pocketMonstersGreen       = "Pocket Monsters Green"
        static let pocketMonstersBlue        = "Pocket Monsters Blue"
        static let pokemonRed                = "Pokémon Red"
        static let pokemonBlue               = "Pokémon Blue"
        static let pokemonYellow             = "Pokémon Yellow"
        
        //MARK: - Gen 2
        static let pokemonGold               = "Pokémon Gold"
        static let pokemonSilver             = "Pokémon Silver"
        static let pokemonCrystal            = "Pokémon Crystal"
        
        //MARK: - Gen 3
        static let pokemonRuby               = "Pokémon Ruby"
        static let pokemonSapphire           = "Pokémon Sapphire"
        static let pokemonFireRed            = "Pokémon FireRed "
        static let pokemonLeafGreen          = "Pokémon LeafGreen"
        static let pokemonEmerald            = "Pokémon Emerald"
        
        //MARK: - Gen 4
        static let pokemonDiamond            = "Pokémon Diamond"
        static let pokemonPearl              = "Pokémon Pearl"
        static let pokemonPlatinum           = "Pokémon Platinum"
        static let pokemonHeartGold          = "Pokémon HeartGold"
        static let pokemonSoulSilver         = "Pokémon SoulSilver"
        
        //MARK: - Gen 5
        static let pokemonBlack              = "Pokémon Black"
        static let pokemonWhite              = "Pokémon White"
        static let pokemonBlack2             = "Pokémon Black 2"
        static let pokemonWhite2             = "Pokémon White 2"
        
        //MARK: - Gen 6
        static let pokemonX                  = "Pokémon X"
        static let pokemonY                  = "Pokémon Y"
        static let pokemonOmegaRuby          = "Pokémon Omega Ruby"
        static let pokemonAlphaSapphire      = "Pokémon Alpha Sapphire"
        
        //MARK: - Gen 7
        static let pokemonSun                = "Pokémon Sun"
        static let pokemonMoon               = "Pokémon Moon"
        static let pokemonUltraSun           = "Pokémon Ultra Sun"
        static let pokemonUltraMoon          = "Pokémon Ultra Moon"
        static let pokemonLetsGoPikachu      = "Pokémon Let's Go, Pikachu!"
        static let pokemonLetsGoEevee        = "Pokémon Let's Go, Eevee!"
        
        //MARK: - Gen 8
        static let pokemonSword              = "Pokémon Sword"
        static let pokemonShield             = "Pokémon Shield"
        static let pokemonBrilliantDiamond   = "Pokémon Brilliant Diamond"
        static let pokemonShiningPearl       = "Pokémon Shining Pearl"
        static let pokemonLegendsArceus      = "Pokémon Legends: Arceus"
        
        //MARK: - Gen 9
        static let pokemonScarlet            = "Pokémon Scarlet"
        static let pokemonViolet             = "Pokémon Violet"
        static let pokemonLegendsZA          = "Pokémon Legends: Z - A"
    }
    
    
    //MARK: - Colors
    struct Colors {
        static let appBackgroundColorOne = Color("appBackgroundColorOne")
        static let appBackgroundColorTwo = Color("appBackgroundColorTwo")
        static let appLinkBGColor        = Color("appLinkBGColor")
        static let launchScreenBG        = Color("launchScreenBG")
    }
    
    struct PokemonsTypesColors {
        static let appBugColor          = Color("appBugColor")
        static let appDarkColor         = Color("appDarkColor")
        static let appDragonColor       = Color("appDragonColor")
        static let appElectricColor     = Color("appElectricColor")
        static let appFairyColor        = Color("appFairyColor")
        static let appFightingColor     = Color("appFightingColor")
        static let appFireColor         = Color("appFireColor")
        static let appFlyingColor       = Color("appFlyingColor")
        static let appGhostColor        = Color("appGhostColor")
        static let appGrassColor        = Color("appGrassColor")
        static let appGroundColor       = Color("appGroundColor")
        static let appIceColor          = Color("appIceColor")
        static let appNormalColor       = Color("appNormalColor")
        static let appPoisonColor       = Color("appPoisonColor")
        static let appPsychicColor      = Color("appPsychicColor")
        static let appRockColor         = Color("appRockColor")
        static let appSteelColor        = Color("appSteelColor")
        static let appStellarColor      = Color("appStellarColor")
        static let appUnknownColor      = Color("appUnknownColor")
        static let appWaterColor        = Color("appWaterColor")
    }
    
    //MARK: - Images
    struct Images{
        static let pokeXLogo = Image("pokeXLogo")
        static let pokeball  = Image("IconPokeball")
        static let pokedex   = Image("pokedexIcon")
    }
    
    //MARK: - Fonts
    
    //MARK: - ApiClient
    struct ApiClient {
        static let baseUrl                = "https://pokeapi.co/api/v2/"
        static let pokemonEndPoint        = "pokemon/"
        static let pokemonLimit           = "?limit=100000&offset=0"
        static let pokemonDefaultImageUrl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/"
        static let pokemonImageType       = ".png"
    }
    
}
