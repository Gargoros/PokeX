//
//  WebService.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 26.04.24.
//

import Foundation

final class WebService {
    
    static let shared = WebService()
    
    func fetchData<T: Decodable>(_ type: T.Type, from endpoint: ApiEndpoints) async throws -> T {
        guard let url = endpoint.generateURL() else {
            throw APIError.badURL
        }
        
        print("fetch - \(url.absoluteString)")
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        if let httpResponse = response as? HTTPURLResponse, !(200...299).contains(httpResponse.statusCode) {
            throw APIError.badResponse(statusCode: httpResponse.statusCode)
        }
        
        do {
            let result = try JSONDecoder().decode(type, from: data)
            return result
        } catch let error as DecodingError {
            print("load error: \(error.localizedDescription)")
            throw APIError.parsing(error)
        }
    }
    
    
}
