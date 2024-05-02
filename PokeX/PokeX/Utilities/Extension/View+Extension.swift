//
//  View+Extension.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 2.05.24.
//

import SwiftUI

//MARK: - shortcut to add corner radius
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}
