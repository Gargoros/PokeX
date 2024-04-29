//
//  PokemonListView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 24.04.24.
//

import SwiftUI

struct PokemonListView: View {
    //MARK: - Variables
    @ObservedObject var viewModel = PokemonViewModel()
    
    //MARK: - Views
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.pokemons, id: \.id) {pokemon in
                    PokemonListItemView(
                        pokemon: pokemon,
                        backgroundColor: [.gray],
                        action: {})
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                }
            }
        }
        .onAppear{
            Task{
                await viewModel.loadPokemons()
            }
            
        }
        
    }
}

#Preview {
    PokemonListView()
}
