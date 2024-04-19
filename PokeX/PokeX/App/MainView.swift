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
        return Array(repeating: GridItem(.flexible(), spacing: 5), count: 2)
    }
    
    //MARK: - Views
    var body: some View {
        ZStack {
            
            //MARK: - Background color
            BackgroundView()
            
            VStack {
                //MARK: - Top title -> refactor to custom shape
                TopTitleView()
                
                ScrollView {
                    //MARK: - Top images pageView +
                    PokeXNewsView()
                    
                    //MARK: - Pokédex
                    PokeXHorizontalScrollSectionView(
                        title: "Hi Trainer",
                        sectionName: "Category",
                        gridLayout: gridLayout
                    )
                    
                    //MARK: - Pokémon Type
                    PokeXHorizontalScrollSectionView(
                        title: "Pokemon Type",
                        sectionName: "Type",
                        gridLayout: gridLayout
                    )
                    
                    //MARK: - Region
                    PokeXHorizontalImageScrollView(
                        title: "Regions",
                        image: Image("Paldea_artwork"),
                        imageWidth: 220,
                        imageHeight: 180
                    )
                    
                    //MARK: - Games
                    PokeXHorizontalImageScrollView(
                        title: "Games",
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
                    
                }
                .scrollIndicators(.hidden)
            }
            .padding(.horizontal)
            
            
        }
    }
}

#Preview {
    MainView()
}
