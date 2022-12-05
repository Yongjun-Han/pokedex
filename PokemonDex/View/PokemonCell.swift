//
//  PokemonCell.swift
//  PokemonDex
//
//  Created by YongJun Han on 2022/12/04.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    let pokemon : Pokemon
    let viewModel : PokemonViewModel
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name)
                    .font(.system(size: 20, weight: .black))
                    .foregroundColor(.white)
                    .padding(.top, 16)
                    .padding(.leading)
                
                HStack(spacing : 140){
                    Text(pokemon.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.3))
                        )
                        .frame(width: 100, height: 24)
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding([.bottom, .trailing],10)
                }
            }
        }
        .frame(width: 365)
        .background(Color(viewModel.backgroundColor(type: pokemon.type)))
        .cornerRadius(10)
//        .shadow(color: .black, radius: 6, x:0.0 , y: 0.0)
    }
}

