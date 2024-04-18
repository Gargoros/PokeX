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
            Color.gray
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack {
                //MARK: - Top title -> refactor to custom shape
                HStack {
                    Spacer()
                    Text("PokeX")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.black)
                    Image("pokeXLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                }
                .padding(.horizontal)
                
                ScrollView {
                    //MARK: - Top images pageView +
                    VStack {
                        HStack {
                            Text("News")
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        TabView {
                            ForEach(0 ..< 5) { _ in
                                Image("pokemon")
                                    .resizable()
                                    .scaledToFit()
                                //.clipShape(RoundedRectangle(cornerRadius: 12))
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                        .frame(height: 250)
                    }
                    
                    //MARK: - Pokédex
                    VStack {
                        HStack {
                            Text("Hi Trainer ")
                                .font(.title)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        //MARK - Main Group
                        ScrollView(.horizontal){
                            LazyHGrid(rows: gridLayout, alignment: .center) {
                                Section {
                                    ForEach(0 ..< 5) { item in
                                        Text("Category")
                                            .font(.title2)
                                            .foregroundStyle(.white)
                                            .padding()
                                            .background(.gray)
                                            .clipShape(RoundedRectangle(cornerRadius: 12))
                                    }
                                }
                            }
                        }
                        .scrollIndicators(.hidden)
                    }
                    
                    //MARK: - Pokémon Type
                    VStack {
                        HStack {
                            Text("Pokemon Type")
                                .font(.title)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        //MARK - Main Group
                        ScrollView(.horizontal){
                            LazyHGrid(rows: gridLayout, alignment: .center) {
                                Section {
                                    ForEach(0 ..< 10) { item in
                                        Text("Type")
                                            .font(.title2)
                                            .foregroundStyle(.white)
                                            .padding()
                                            .background(.gray)
                                            .clipShape(RoundedRectangle(cornerRadius: 12))
                                    }
                                }
                            }
                        }
                        .scrollIndicators(.hidden)
                    }
                    
                    
                    //MARK: - Region
                    
                    VStack {
                        HStack {
                            Text("Regions")
                                .font(.title)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        //MARK - Main Group
                        ScrollView(.horizontal){
                            LazyHStack{
                                ForEach(0 ..< 10) { item in
                                    Image("Paldea_artwork")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 250, height: 180)
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                }
                            }
                            
                        }
                        .scrollIndicators(.hidden)
                    }
                    
                    //MARK: - Games
                    VStack {
                        HStack {
                            Text("Games")
                                .font(.title)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        //MARK - Main Group
                        ScrollView(.horizontal){
                            LazyHStack(spacing: 0){
                                ForEach(0 ..< 10) { item in
                                    Image("Scarlet_EN_boxart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 160, height: 220)
                                }
                            }
                            
                        }
                        .scrollIndicators(.hidden)
                        ScrollView(.horizontal){
                            LazyHStack(spacing: 10){
                                ForEach(0 ..< 10) { item in
                                    Image("Crystal_EN_boxart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 160, height: 220)
                                }
                            }
                            
                        }
                        .scrollIndicators(.hidden)
                    }
                    
                    
                    //MARK: - History
                    VStack (alignment: .leading, spacing: 0){
                        Text("Pokémon:")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text("The franchise originated as a pair of role-playing games developed by Game Freak, from an original concept by its founder, Satoshi Tajiri. Released on the Game Boy on February 27, 1996, the games became sleeper hits and were followed by manga series, a trading card game, and anime series and films. From 1998 to 2000, Pokémon was exported to the rest of the world, creating an unprecedented global phenomenon dubbed \"Pokémania\". By 2002, the craze had ended, after which Pokémon became a fixture in popular culture, with new products being released to this day.")
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                    
                    Link(
                        destination: URL(string: "https://bulbapedia.bulbagarden.net/wiki/Main_Page")!, label: {
                            Text("PokeWiki")
                        })
                    .padding(.bottom, 30)
                    
                }
                .scrollIndicators(.hidden)
            }
            
            
        }
    }
}

#Preview {
    MainView()
}
