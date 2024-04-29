//
//  ApiEndpoints.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

enum ApiEndpoints{
    
    case allPokemons
    case pokemonById(id: Int)
    case pokemonByName(name: String)
    case pokemonImage(id: Int)
    
    var path: String {
        switch self {
        case .allPokemons:
            return "\(PokeXConstants.ApiClient.pokemonEndPoint)\(PokeXConstants.ApiClient.pokemonLimit)"
        case .pokemonById(let id):
            return "\(PokeXConstants.ApiClient.pokemonEndPoint)\(id)"
        case .pokemonByName(let name):
            return "\(PokeXConstants.ApiClient.pokemonEndPoint)\(name)"
        case .pokemonImage(let id):
            return "\(PokeXConstants.ApiClient.pokemonDefaultImageUrl)\(id)\(PokeXConstants.ApiClient.pokemonImageType)"
        }
        
    }
    
    func generateURL() -> URL? {
        guard let baseURL = URL(string: PokeXConstants.ApiClient.baseUrl) else { return nil }
        guard let urlWithPath = baseURL.appendingPathComponent(path).absoluteString.removingPercentEncoding else { return nil }
        return URL(string: urlWithPath)
    }
}
