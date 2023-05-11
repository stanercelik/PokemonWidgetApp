//
//  WidgetPokemonBundle.swift
//  WidgetPokemon
//
//  Created by Taner Çelik on 11.05.2023.
//

import WidgetKit
import SwiftUI

@main
struct WidgetPokemonBundle: WidgetBundle {
    var body: some Widget {
        WidgetPokemon()
        WidgetPokemonLiveActivity()
    }
}
