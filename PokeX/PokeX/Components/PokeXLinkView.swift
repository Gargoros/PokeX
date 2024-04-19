//
//  PokeXLinkView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 19.04.24.
//

import SwiftUI

struct PokeXLinkView: View {
    //MARK: - Variables
    
    
    //MARK: - Views
    var body: some View {
        HStack {
            Spacer()
            Link(
                destination: URL(string: "https://bulbapedia.bulbagarden.net/wiki/Main_Page")!, label: {
                    Text("PokeWiki")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.accentColor)
            })
            Spacer()
            
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.appLinkBG)
            
        )
    }
}

#Preview {
    PokeXLinkView()
}
