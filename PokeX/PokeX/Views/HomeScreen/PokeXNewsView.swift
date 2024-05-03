//
//  PokeXNewsView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 19.04.24.
//

import SwiftUI

struct PokeXNewsView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                Text(PokeXConstants.SectionsStrings.news)
                    .modifier(TopTitleModifier(foregroundColor: .black))
                
            }
            
            TabView {
                ForEach(0 ..< 5) { _ in
                    Image("pokemon")
                        .resizable()
                        .scaledToFit()
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .frame(height: 250)
        }
    }
}

#Preview {
    PokeXNewsView()
}
