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
        
//        LinearGradient(
//            gradient: Gradient(stops: [
//                Gradient.Stop(color: .appBackgroundColorOne, location: 0.15),
//                Gradient.Stop(color: .appBackgroundColorTwo, location: 0.1)
//            ]),
//            startPoint: .topLeading,
//            endPoint: .bottomTrailing
//        )
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
