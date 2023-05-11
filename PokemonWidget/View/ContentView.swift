//
//  ContentView.swift
//  PokemonWidget
//
//  Created by Taner Çelik on 8.05.2023.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
    //Hangisine tıklandıysa widgetta onu gösterebilmemiz için tıklanan pokemonu kaydediyoruz
    //Ama lisans lazım ki o bende yok...
    
    
    //@AppStorage("pokemon", store: UserDefaults(suiteName: "group.com.taner.PokemonWidgetTests"))
    //var pokemonData : Data = Data()
    
    var body: some View {
        VStack {
            ForEach(pokemonList) { pokemon in
                PokemonRowView(pokemon: pokemon)
                    .onTapGesture { userDefaultSave(pokemon: pokemon) }
            }
        }
    }
    func userDefaultSave(pokemon : Pokemon) {

//        if let pokemonData = try?
//            JSONEncoder().encode(pokemon) {
//            self.pokemonData = pokemonData
        WidgetCenter.shared.reloadTimelines(ofKind: "WidgetPokemon")
            print(pokemon.isim )
        //}

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
