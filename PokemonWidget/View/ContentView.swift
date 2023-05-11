//
//  ContentView.swift
//  PokemonWidget
//
//  Created by Taner Çelik on 8.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(pokemonList) { pokemon in
                PokemonRowView(pokemon: pokemon)
            } 
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
