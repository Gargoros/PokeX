//
//  OnBoardingView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 24.04.24.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: - Variables
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - Views
    var body: some View {
        
        ZStack {
            
            BackgroundView()
            
            VStack(alignment: .center, spacing: 30) {
                Spacer()
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Welcome to the PokéX app")
                        .modifier(TopTitleModifier())
                    
                    Divider()
                        .frame(width: 100, height: 3)
                        .overlay {
                            Color.appLinkBG
                        }
                }
                
                
                Text("""
This is an unofficial, fan-made, and free-to-use app that contains detailed info about Pokémon, games, moves, abilities, location and much more.

Arts, visuals and names are properties of Game Freak, Nintendo and The Pokémon Company.

This app is not official and is not linked to the companies mentioned above. Some images used in this app are copyrighted and belong to Nintendo, GAME FREAK or The Pokémon Company. 
They are used in the app in accordance with the laws of Fair Use. No copyright infringement intended.
""")
                .modifier(LargeTextModifier())
                
                
                
                
                VStack(alignment: .leading) {
                    Text("© 2002 - 2024 Pokémon")
                    Text("© 1995 - 2024 Nintendo/Creature Inc./GAME FREAK Inc.")
                }
                .modifier(CopyrightModifier())
                
                PokeXButtonView(
                    title: "I UNDERSTAND",
                    action: {
                        print("pressed")
                        isOnboarding = false
                    }
                )
                
                Spacer()
            }
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    OnBoardingView()
}
