//
//  Pokemon.swift
//  PokemonWidget
//
//  Created by Taner Çelik on 8.05.2023.
//

import Foundation

struct Pokemon : Identifiable, Codable {
    // Codable sonrasında storage'a kaydederken fln laszım olacak
    // Identifiable listede gösterirken lazım olacak
    
    let type : String
    let gorselIsmi : String
    let isim : String
    
    var id : String{
        gorselIsmi
    }
    
}

let pikachu = Pokemon(type: "Mouse Pokemon", gorselIsmi: "pikachu", isim: "Pikachu")
let jigglypuff = Pokemon(type: "Bilmm Pokemon", gorselIsmi: "jigglypuff", isim: "Jigglypuff")
let snorlax = Pokemon(type: "Random Pokemon", gorselIsmi: "snorlax", isim: "Snorlax")

let pokemonList = [pikachu, jigglypuff, snorlax]
