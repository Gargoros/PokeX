//
//  TopTitleView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 19.04.24.
//

import SwiftUI

struct TopTitleView: View {
    var body: some View {
        HStack {
            
            Text(PokeXConstants.SectionsStrings.pokeX)
                .modifier(TopTitleModifier(foregroundColor: .white))
            PokeXConstants.Images.pokeXLogo
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
            
            Spacer()
        }
    }
}

#Preview {
    VStack {
        TopTitleView()
        Spacer()
    }
}
