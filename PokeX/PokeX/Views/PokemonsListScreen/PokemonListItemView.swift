//
//  PokemonListItemView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 24.04.24.
//

import SwiftUI

struct PokemonListItemView: View {
    //MARK: - Variables
    let pokemon: String
    let backgroundColor: [Color]
    var action: () -> Void
    
    //MARK: - Views
    var body: some View {
        
        HStack {
            
            VStack {
                HStack {
                    Text("#740")
                        .foregroundStyle(.white.opacity(0.6))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    
                    Spacer()
                    
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
                    Text(pokemon)
                        .foregroundStyle(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding()
                    
                }
            }
        }
        .overlay(alignment: .leading){
            Image("crabominable")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
        }
        .background(
            LinearGradient(
                colors: backgroundColor,
                startPoint: .leading,
                endPoint: .trailing)
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 8)
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
        pokemon: "Crabominable",
        backgroundColor: [
            .orange.opacity(0.5), .orange.opacity(0.8),
            .blue.opacity(0.5), .blue.opacity(0.8)
        ],
        action: {}
    )
}
