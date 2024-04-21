//
//  BackgroundView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 19.04.24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        
        LinearGradient(
            colors: [
                Color(.appBackgroundColorOne),
                Color(.appBackgroundColorTwo)
            ],
            startPoint: .top,
            endPoint: .bottom)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
