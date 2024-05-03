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
            //MARK: - Custom NavBar Shape
            PokeXCustomNavBar()
                .zIndex(1)
                .overlay(alignment: .topLeading) {
                    
                    //MARK: - Top title -> refactor to custom shape
                    TopTitleView()
                        .padding(.horizontal)
                        .offset(x: 20, y: 15)
                }
            
            NavigationStack {
                
                VStack {
                    //MARK: - Pokedex Card View
                    NavigationLink(
                        destination: {
                            PokemonListView()
                        }, label: {
                            PokeXPokedexCardView(
                                fillColor: PokeXConstants.PokemonsTypesColors.appFireColor,
                                cardIcon: PokeXConstants.Images.pokeball,
                                cardTitle: PokeXConstants.SectionsStrings.pokedex,
                                cardImage: PokeXConstants.Images.pokedex
                            )
                        })
                    .padding(.top, 60)
                    
                    
                    //MARK: - Grid Items -> refactor that part!!!
                    Grid {
                        GridRow{
                            ZStack {
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(PokeXConstants.PokemonsTypesColors.appPoisonColor)
                                HStack {
                                    Text(PokeXConstants.Contents.games)
                                        .modifier(CardTitleModifier(foregroundColor: .white))
                                }
                                .gridCellColumns(1)
                            }
                            
                            
                            Grid {
                                GridRow {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(PokeXConstants.PokemonsTypesColors.appWaterColor)
                                        HStack {
                                            Text(PokeXConstants.Contents.items)
                                                .modifier(CardTitleModifier(foregroundColor: .white))
                                        }
                                        .padding()
                                    }
                                    
                                }
                                GridRow {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(PokeXConstants.PokemonsTypesColors.appGrassColor)
                                        HStack {
                                            Text(PokeXConstants.SectionsStrings.types)
                                                .modifier(CardTitleModifier(foregroundColor: .white))
                                        }
                                        .padding()
                                    }
                                    
                                }
                            }
                        }
                    }
                    .frame(height: 150)
                }
                .zIndex(0)
                .padding(.horizontal, 8)
            }
            //MARK: - Custom NavBar Shape
            PokeXCustomNavBar()
                .rotationEffect(.degrees(180))
                .zIndex(1)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    MainView()
}
