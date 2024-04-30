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
                    .modifier(TopTitleModifier())
                Spacer()
            }
            
            ScrollView(.horizontal){
                LazyHGrid(rows: gridLayout, alignment: .center) {
                    Section {
                        ForEach(sectionsNames, id: \.self) { item in
                            Text(item)
                                .modifier(SectionsItemTextModifier(background: .gray))
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
        sectionsNames: ["Type1","Type2","Type3","Type4","Type5","Type6","Type7","Type8","Type9","Type10"],
        gridLayout: [
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    )
}
