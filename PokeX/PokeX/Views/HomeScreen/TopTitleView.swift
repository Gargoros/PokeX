//
//  TopTitleView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 19.04.24.
//

import SwiftUI

struct TopTitleView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(PokeXConstants.SectionsStrings.pokeX)
                    .font(.title3)
                    .fontWeight(.black)
                    .foregroundStyle(.black)
                PokeXConstants.Images.pokeXLogo
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
            }
        }
    }
}

#Preview {
    VStack {
        TopTitleView()
        Spacer()
    }
}
