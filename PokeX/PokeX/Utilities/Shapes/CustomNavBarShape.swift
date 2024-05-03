//
//  CustomNavBarShape.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 3.05.24.
//

import SwiftUI

struct CustomNavBarShape: View {
    //MARK: - Properties
    let color: Color
    let base: CGFloat = 0
    
    //MARK: - Views
    var body: some View {
        
        GeometryReader {geometry in
            let widthG = geometry.size.width
            let heightG = geometry.size.height
            Path { path in
                path.move(to: CGPoint(x: base, y: base))
                path.addLine(to: CGPoint(
                    x: base,
                    y: heightG * 0.1))
                path.addLine(to: CGPoint(
                    x: widthG * 0.38,
                    y: heightG * 0.1))
                path.addLine(to: CGPoint(
                    x: widthG * 0.6,
                    y: heightG * 0.075))
                path.addLine(to: CGPoint(
                    x: widthG,
                    y: heightG * 0.075))
                path.addLine(to: CGPoint(
                    x: widthG,
                    y: base))
                path.closeSubpath()
                
            }
            .fill(color)
            .shadow(radius: 4, x: 0.0, y: 2.0 )
        }
        
    }
}

#Preview {
    ZStack {
        BackgroundView()
        VStack {
            
            ZStack {
                
                CustomNavBarShape(
                    color: PokeXConstants.Colors.appBackgroundColorOne
                )
                CustomNavBarShape(
                    color: PokeXConstants.PokemonsTypesColors.appFireColor
                )
                    .offset(y: -10)
            }
            .ignoresSafeArea()
            //Spacer()
            ZStack {
                
                CustomNavBarShape(
                    color: PokeXConstants.Colors.appBackgroundColorOne
                )
                CustomNavBarShape(
                    color: PokeXConstants.PokemonsTypesColors.appFireColor
                )
                    .offset(y: -10)
            }
            .ignoresSafeArea()
            .rotationEffect(.degrees(180))
            
        }
    }
}
