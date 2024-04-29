//
//  PokemonListItemView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 24.04.24.
//

import SwiftUI

struct PokemonListItemView: View {
    //MARK: - Variables
    let pokemon: PokemonEntry
    let backgroundColor: [Color]
    var action: () -> Void
    
    //MARK: - Views
    var body: some View {
        
        HStack {
            
            VStack {
                HStack {
                    Spacer()
                    Text("#\(pokemon.id ?? 0)")
                        .foregroundStyle(.white.opacity(0.6))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    
                    Button {
                        //MARK: - refactor that part in future
                        action()
                    } label: {
                        Image(systemName: "doc.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.white)
                            .frame(width: 25)
                    }
                    
                }
                .padding(.horizontal)
                
                HStack {
                    Spacer()
                    Text(pokemon.name?.uppercased() ?? "Empty")
                        .foregroundStyle(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding()
                    
                }
            }
        }
        
        .overlay(alignment: .leading){
            Image("\(pokemon.id ?? 0)")
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
                .padding()
        }
        .background(
            LinearGradient(
                colors: backgroundColor,
                startPoint: .leading,
                endPoint: .trailing)
            .clipShape(
                RoundedRectangle(cornerRadius: 8)
            )
        )
        
        
        .shadow(
            color: .black.opacity(0.5),
            radius: 5,
            x: 2.0,
            y: 2.0
        )
        
    }
}

#Preview {
    PokemonListItemView(
        pokemon: PokemonEntry(name: "blastoise", url: "https://pokeapi.co/api/v2/pokemon/9/"),
        backgroundColor: [
            .orange.opacity(0.5), .orange.opacity(0.8),
            .blue.opacity(0.5), .blue.opacity(0.8)
        ],
        action: {}
    )
    .padding()
}
