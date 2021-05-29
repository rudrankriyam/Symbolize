//
//  ContentView.swift
//  Symbolize
//
//  Created by Rudrank Riyam on 29/05/21.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 85))]
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(SymbolCategories.devices.symbols, id: \.self) { symbol in
                        CardView(imageName: symbol)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
