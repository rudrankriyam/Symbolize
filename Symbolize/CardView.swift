//
//  CardView.swift
//  Symbolize
//
//  Created by Rudrank Riyam on 29/05/21.
//

import SwiftUI

struct CardView: View {
    private let cornerRadius: CGFloat = 16
    
    var imageName: String
    @State private var isFaceUp = false
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: cornerRadius)
            if isFaceUp {
                shape.fill(Color.white)
                
                shape.strokeBorder(lineWidth: 3)
                
                Image(systemName: imageName)
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .foregroundColor(Color(.systemIndigo))
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: SymbolCategories.all.symbols.first!)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
