//
//  WidgetPokemon.swift
//  WidgetPokemon
//
//  Created by Taner Çelik on 11.05.2023.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    
    @AppStorage("pokemon", store: UserDefaults(suiteName: "group.com.taner.PokemonWidgetTests"))
    var pokemonData : Data = Data()

     
    func placeholder(in context: Context) -> SimpleEntry {
        // Henüz widget yüklenmeden orası boş kalmasın bu fonksiyondaki gösterilsin.
        SimpleEntry(date: Date(), configuration: ConfigurationIntent(), pokemon: Pokemon(type: "Mouse Pokemon", gorselIsmi: "pikachu", isim: "Pikachu") )
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        // Zamandan bağımsız o anki göstereceğimiz veriyi yazabildiğimiz func
        
        if let pokemon = try? JSONDecoder().decode(Pokemon.self, from: pokemonData) {
            let entry = SimpleEntry(date: Date(), configuration: configuration, pokemon: pokemon)
            completion(entry)
        }
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        //  Farklı zamanlarda farklı şeyler göstermeye yarar
        if let pokemon = try? JSONDecoder().decode(Pokemon.self, from: pokemonData) {
            let entry = SimpleEntry(date: Date(), configuration: configuration, pokemon: pokemon)
            
            let timeline = Timeline(entries: [entry], policy: .never)
            
            completion(timeline)
        }
        
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    let pokemon : Pokemon // Target olarak eklenmesi lazım
}

struct WidgetPokemonEntryView : View {
    // Entry'i alıp gösterdiğimiz yer
    var entry: Provider.Entry

    var body: some View {
        OzelGorselView(image: Image(entry.pokemon.gorselIsmi ))
            .frame(width: 100, height: 100, alignment: .center)
    }
}

struct WidgetPokemon: Widget {
    let kind: String = "WidgetPokemon"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetPokemonEntryView(entry: entry)
        }
        .configurationDisplayName("Pokemon Widget")
        .description("Widget Exmaples")
    }
}

struct WidgetPokemon_Previews: PreviewProvider {
    static var previews: some View {
        WidgetPokemonEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent(), pokemon: Pokemon(type: "bıdıbıdı", gorselIsmi: "jigglypuff", isim: "Jigglypuff")))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
