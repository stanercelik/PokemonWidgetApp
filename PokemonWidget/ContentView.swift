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
            Image("pikachu")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.5 ,
                       height: UIScreen.main.bounds.width * 0.5)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
