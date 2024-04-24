//
//  PokemonListView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 24.04.24.
//

import SwiftUI

struct PokemonListView: View {
    //MARK: - Variables
    let pokemons: [String] = [
        "Abra",
        "Aerodactyl",
        "Amoonguss",
        "Barraskewda",
        "Crabominable",
        "Corvisquire"
    ]
    
    //MARK: - Views
    var body: some View {
        ZStack {
            
            BackgroundView()
            
            ScrollView {
                LazyVStack {
                    ForEach(pokemons, id: \.self) { pokemon in
                        PokemonListItemView(
                            pokemon: pokemon,
                            backgroundColor: [
                                .orange.opacity(0.5), .orange.opacity(0.8),
                                .blue.opacity(0.5), .blue.opacity(0.8)
                            ],
                            action: {}
                        )
                        .padding(.horizontal, 8)
                    }
                }
            }
            .scrollIndicators(.hidden)
            
        }
    }
}

#Preview {
    PokemonListView()
}
