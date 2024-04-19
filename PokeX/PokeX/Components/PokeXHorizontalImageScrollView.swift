//
//  PokeXHorizontalImageScrollView.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 19.04.24.
//

import SwiftUI

struct PokeXHorizontalImageScrollView: View {
    //MARK: - Variables
    let title: String?
    let image: Image
    let imageWidth: CGFloat
    var imageHeight: CGFloat? = 220
    
    //MARK: - Views
    var body: some View {
        VStack(spacing: 0) {
            if title != nil {
                HStack {
                    Text(title!)
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                }
            }
            //MARK - Main Group
            ScrollView(.horizontal){
                LazyHStack{
                    ForEach(0 ..< 10) { item in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: imageWidth, height: imageHeight)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
                
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    PokeXHorizontalImageScrollView(
        title: "Regions",
        image: Image("Paldea_artwork"),
        imageWidth: 220
    )
}
