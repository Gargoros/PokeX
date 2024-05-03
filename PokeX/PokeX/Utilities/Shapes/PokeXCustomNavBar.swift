//
//  PokeXCustomNavBar.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 3.05.24.
//

import SwiftUI

struct PokeXCustomNavBar: View {
    
    var body: some View {
        ZStack {
           
            CustomNavBarShape(color: .white.opacity(0.7))
            CustomNavBarShape(color: .red)
                .offset(y: -10)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    PokeXCustomNavBar()
}
