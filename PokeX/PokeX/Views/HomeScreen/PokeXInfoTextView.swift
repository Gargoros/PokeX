//
//  PokeXInfoTextView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 19.04.24.
//

import SwiftUI

struct PokeXInfoTextView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 0){
            Text("Pokémon:")
                .font(.title2)
                .fontWeight(.semibold)
            Text("The franchise originated as a pair of role-playing games developed by Game Freak, from an original concept by its founder, Satoshi Tajiri. Released on the Game Boy on February 27, 1996, the games became sleeper hits and were followed by manga series, a trading card game, and anime series and films. From 1998 to 2000, Pokémon was exported to the rest of the world, creating an unprecedented global phenomenon dubbed \"Pokémania\". By 2002, the craze had ended, after which Pokémon became a fixture in popular culture, with new products being released to this day.")
                .font(.title3)
                .multilineTextAlignment(.leading)
        }
    }
}

#Preview {
    PokeXInfoTextView()
}
