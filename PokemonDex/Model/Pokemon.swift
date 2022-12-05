//
//  Pokemon.swift
//  PokemonDex
//
//  Created by YongJun Han on 2022/12/05.
//

import Foundation
//import PokemonAPI



struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl : String
    let type : String
}

let Mock_Pokemon : [Pokemon] = [
    .init(id: 0, name: "이상해씨", imageUrl: "이상해씨", type: "독"),
    .init(id: 1, name: "이상해풀", imageUrl: "이상해씨", type: "독"),
    .init(id: 2, name: "이상해꽃", imageUrl: "이상해씨", type: "독"),
    .init(id: 3, name: "파이리", imageUrl: "이상해씨", type: "불"),
    .init(id: 4, name: "리자드", imageUrl: "이상해씨", type: "불"),
    .init(id: 5, name: "리자몽", imageUrl: "이상해씨", type: "불")
]

//extension PokemonAPI: ObservableObject { }
