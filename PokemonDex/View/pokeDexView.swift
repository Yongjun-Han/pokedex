//
//  pokeDexView.swift
//  PokemonDex
//
//  Created by YongJun Han on 2022/12/05.
//

import SwiftUI

struct pokeDexView: View {
    private let gridItems = [GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems,spacing: 16 ) {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
                    }
                }
            }
            .navigationTitle("포켓몬 도감")
        }
    }
}

struct pokeDexView_Previews: PreviewProvider {
    static var previews: some View {
        pokeDexView()
    }
}
