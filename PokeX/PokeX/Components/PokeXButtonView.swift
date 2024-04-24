//
//  PokeXButtonView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 24.04.24.
//

import SwiftUI

struct PokeXButtonView: View {
    //MARK: - Variables
    let title: String
    var action: () -> Void
    
    //MARK: - Views
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.accentColor)
                Spacer()
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.appLinkBG)
            )
        }

    }
}

#Preview {
    PokeXButtonView(title: "Press Me", action: {})
}
