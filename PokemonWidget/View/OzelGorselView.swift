//
//  gorselViewOzel.swift
//  PokemonWidget
//
//  Created by Taner Çelik on 11.05.2023.
//

import SwiftUI

struct OzelGorselView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            //.clipShape(Circle())
            //.overlay(Circle().stroke(Color.red ,lineWidth: 5 ))
            .shadow(radius: 16)
    }
}

struct gorselViewOzel_Previews: PreviewProvider {
    static var previews: some View {
        OzelGorselView(image: Image("pikachu"))
    }
}
