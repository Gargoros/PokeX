//
//  PokemonViewModel.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

@MainActor
final class PokemonViewModel: ObservableObject {
    
    @Published var pokemons: [PokemonEntry] = []
    @Published var errorMessage: String?
    
    private let webService = WebService.shared
    
    //MARK: - Load data form PokeApi
    func loadPokemons() async {
        do{
            let apiEndpoint = ApiEndpoints.allPokemons
            let fetchPokemons = try await webService.fetchData(Pokemons.self, from: apiEndpoint)
            pokemons = fetchPokemons.results ?? []
        }
        catch{
            errorMessage = (error as? APIError)?.localizedDescription ?? "Unknown Error"
        }
    }
    
}
