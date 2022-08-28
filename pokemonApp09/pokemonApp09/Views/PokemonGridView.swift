//
//  PokemonGridView.swift
//  pokemonApp09
//
//  Created by Hitesh Choudhary on 27/08/22.
//

import SwiftUI

// MARK: - Grid View to display all the pokemons

struct PokemonGridView: View {
  
    // gridItems for lazy grid view
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    // object for view model
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        
        NavigationView {
            ZStack {
                //gradient background
                LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.2), Color.pink
                    .opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    LazyVGrid(columns: gridItems, spacing: 16) {
                    
                // parsing through all the data from api and model
                        ForEach(viewModel.pokemon) { pokemon in
                            NavigationLink {
                                PokemonDetailView(viewModel: viewModel, pokemon: pokemon)
                            } label: {
                                PokeCell(pokemon: pokemon, viewModel: viewModel)
                            }

                        }
                    }
                }.navigationTitle("Pokemon Club \(viewModel.pokemon.count)")
            }
         
        }.navigationBarHidden(true)

        
    }
}

struct PokeView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonGridView()
    }
}
