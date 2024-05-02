//
//  RoundedCorner.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 2.05.24.
//

import SwiftUI

//MARK: - Rectangle shape with corner radius
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
