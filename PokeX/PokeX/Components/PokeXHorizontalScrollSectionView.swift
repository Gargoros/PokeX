//
//  PokeXHorizontalScrollSectionView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 19.04.24.
//

import SwiftUI

struct PokeXHorizontalScrollSectionView: View {
    //MARK: - Variables
    let title: String
    let sectionsNames: [String]
    var gridLayout: [GridItem]
    
    //MARK: - Views
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            ScrollView(.horizontal){
                LazyHGrid(rows: gridLayout, alignment: .center) {
                    Section {
                        ForEach(sectionsNames, id: \.self) { item in
                            Text(item)
                                .font(.title2)
                                .foregroundStyle(.white)
                                .padding()
                                .frame(width: 150)
                                .background(.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    PokeXHorizontalScrollSectionView(
        title: "Pokemon Type",
        sectionsNames: ["Type"],
        gridLayout: [
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    )
}
