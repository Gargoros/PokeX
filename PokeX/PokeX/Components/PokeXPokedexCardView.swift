//
//  PokeXPokedexCardView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 3.05.24.
//

import SwiftUI

struct PokeXPokedexCardView: View {
    //MARK: - Properties
    let fillColor:   Color
    let cardIcon:    Image
    let cardTitle:   String
    let cardImage:   Image
    var height:      CGFloat = 150
    
    //MARK: - Views
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(fillColor)
                .overlay(alignment: .leading){
                    cardImage
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white.opacity(0.8))
                        .offset(x: 20)
                        .padding()
                }
                .overlay (alignment: .topTrailing){
                    cardIcon
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .rotationEffect(.degrees(-47))
                        .foregroundStyle(.white.opacity(0.3))
                        .offset(x: 90, y: -90)
                        .clipped()
                }
                .overlay (alignment: .bottomTrailing) {
                    HStack(alignment: .lastTextBaseline) {
                        Spacer()
                        Text(cardTitle)
                            .modifier(CardTitleModifier(foregroundColor: .white))
                            .padding()
                        
                    }
                }
            .frame(height: height)
        }
    }
}

#Preview {
    PokeXPokedexCardView(
        fillColor: PokeXConstants.PokemonsTypesColors.appFireColor,
        cardIcon: PokeXConstants.Images.pokeball,
        cardTitle: PokeXConstants.SectionsStrings.pokedex,
        cardImage: Image(systemName: "iphone"),
        height: 150
    )
        .padding()
}
