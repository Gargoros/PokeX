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
            
            VStack (alignment: .trailing, spacing: 10){
                HStack {
                    Spacer()
                    Text(pokemon.name?.uppercased() ?? "Empty")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.heavy)
                }
                HStack {
                    Spacer()
                    Text("#\(pokemon.id ?? 0)")
                        .foregroundStyle(.white.opacity(0.6))
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
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
        .overlay(alignment: .leading){
            if UIImage(named: "\(pokemon.id!)") != nil{
                Image("\(pokemon.id!)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding()
            } else {
                Image("0")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding()
            }
        }
        .overlay(alignment: .topTrailing){
            Button {
                //MARK: - refactor that part in future
                action()
                print("Added to your collection")
            } label: {
                Image(systemName: "doc.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.white)
                    .frame(width: 25)
            }
            .offset(x: 7, y: -10)
        }
        .shadow(
            color: .black.opacity(0.5),
            radius: 5,
            x: 2.0,
            y: 2.0
        )
    }
}

#Preview {
    VStack (spacing: 50){
        PokemonListItemView(
            pokemon: PokemonEntry(name: "blastoise", url: "https://pokeapi.co/api/v2/pokemon/0/"),
            backgroundColor: [
                .orange.opacity(0.5), .orange.opacity(0.8),
                .blue.opacity(0.5), .blue.opacity(0.8)
            ],
            action: {}
        )
        PokemonListItemView(
            pokemon: PokemonEntry(name: "blastoise", url: "https://pokeapi.co/api/v2/pokemon/10274/"),
            backgroundColor: [
                .orange.opacity(0.5), .orange.opacity(0.8),
                .blue.opacity(0.5), .blue.opacity(0.8)
            ],
            action: {}
        )
        
    }
    .padding()
}
