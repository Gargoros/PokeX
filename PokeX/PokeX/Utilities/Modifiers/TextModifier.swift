//
//  TextModifier.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 29.04.24.
//

import Foundation
import SwiftUI


//MARK: - Top Title Modifier
struct TopTitleModifier: ViewModifier{
    
    let foregroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(foregroundColor)
            .font(.title3)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
    }
}


//MARK: - Large Text Modifier
struct LargeTextModifier: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .foregroundStyle(.black)
            .fontWeight(.medium)
            .multilineTextAlignment(.leading)
    }
}

//MARK: - Sections Item Text Modifier
struct SectionsItemTextModifier: ViewModifier{
    let background: Color
    
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .foregroundStyle(.white)
            .padding()
            .frame(width: 150)
            .background(background)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

//MARK: - Copyright modifier
struct CopyrightModifier: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.black)
            .fontWeight(.regular)
            .font(.footnote)
    }
}
