//
//  ContentView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 18.04.24.
//

import SwiftUI

struct MainView: View {
    //MARK: - Variables
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(minimum: 60, maximum: 70), spacing: 5), count: 2)
    }
    
    //MARK: - Views
    var body: some View {
        ZStack {
            
            //MARK: - Background color
            BackgroundView()
            
            
            PokeXCustomNavBar()
                .zIndex(1)
                .overlay(alignment: .topLeading) {
                    
                    //MARK: - Top title -> refactor to custom shape
                    TopTitleView()
                        .padding(.horizontal)
                }
            
            VStack {
                ScrollView {
                    Spacer()
                    //MARK: - Top images pageView +
                    PokeXNewsView()
                    
                    //MARK: - Pokédex
                    PokeXHorizontalScrollSectionView(
                        title: PokeXConstants.SectionsStrings.hiTrainer,
                        sectionsNames: PokeXConstants.contentsList,
                        gridLayout: gridLayout
                    )
                    
                    //MARK: - Pokémon Type
                    PokeXHorizontalScrollSectionView(
                        title: PokeXConstants.SectionsStrings.pokemonsType,
                        sectionsNames: PokeXConstants.pokemonsTypesList,
                        gridLayout: gridLayout
                    )
                    
                    //MARK: - Region
                    PokeXHorizontalImageScrollView(
                        title: PokeXConstants.SectionsStrings.regions,
                        image: Image("Paldea_artwork"),
                        imageWidth: 220,
                        imageHeight: 180
                    )
                    
                    //MARK: - Games
                    PokeXHorizontalImageScrollView(
                        title: PokeXConstants.Contents.games,
                        image: Image("Scarlet_EN_boxart"),
                        imageWidth: 160
                    )
                    PokeXHorizontalImageScrollView(
                        title: nil,
                        image: Image("Crystal_EN_boxart"),
                        imageWidth: 200
                    )
                    
                    
                    //MARK: - History
                    PokeXInfoTextView()
                        .padding(.bottom, 40)
                    
                    //MARK: - Link to the bulbapedia
                    PokeXLinkView()
                        .padding(.bottom, 40)
                    Spacer()
                    
                }
                .scrollIndicators(.hidden)
                
                
            }
            .zIndex(0)
            .padding(.top, 20)
            .padding(.bottom, 30)
            .padding(.horizontal)
            
            PokeXCustomNavBar()
                .rotationEffect(.degrees(180))
                .zIndex(1)

            
            
        }
    }
}

#Preview {
    MainView()
}
