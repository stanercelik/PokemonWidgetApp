//
//  PokemonView.swift
//  PokemonWidget
//
//  Created by Taner Çelik on 11.05.2023.
//

import SwiftUI

struct PokemonRowView: View {
    let pokemon : Pokemon
    var body: some View {
        HStack(alignment: .center){
            OzelGorselView(image: Image(pokemon.gorselIsmi))
                .frame(width: 120, height: 120, alignment: .center)
                .padding()
            Spacer()
            VStack{
                Text("Name: " + (pokemon.isim))
                    .font(.title2).bold()
                    .padding()
                    .fontDesign(.rounded)
                Text("Type: " + (pokemon.type))
                    .font(.headline)
                    .fontDesign(.rounded)
            }
            Spacer()
        }.frame(width: UIScreen.main.bounds.width )
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRowView(pokemon: snorlax).previewLayout(.sizeThatFits)
    }
}
