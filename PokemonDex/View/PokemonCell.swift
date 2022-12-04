//
//  PokemonCell.swift
//  PokemonDex
//
//  Created by YongJun Han on 2022/12/04.
//

import SwiftUI

struct PokemonCell: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("이상해씨")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 16)
                    .padding(.leading)
                
                HStack{
                    Text("독")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.3))
                        )
                        .frame(width: 100, height: 24)
                    Image("이상해씨")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding([.bottom, .trailing],10)
                }
            }
        }
        .background(Color.green)
        .cornerRadius(10)
//        .shadow(color: .black, radius: 6, x:0.0 , y: 0.0)
    }
}

struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCell()
    }
}
