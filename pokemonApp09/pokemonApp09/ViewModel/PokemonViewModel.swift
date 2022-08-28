//
//  PokemonViewModel.swift
//  pokemonApp09
//
//  Created by Hitesh Choudhary on 23/08/22.
//

import Foundation
import SwiftUI

//MARK: - View Model of Pokemon
class PokemonViewModel: ObservableObject {
    
    //object of pokemon model
    @Published var pokemon = [Pokemon]()
    
    //  create base url of the API
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    //calling the fetch method to call api
    init() {
        fetchData()
        print(pokemon)
    }
    
//MARK: - Method to fetch data from API
    func fetchData() {
        
        // fetch data from url
        guard let url = URL(string: baseURL) else {return}
        URLSession.shared.dataTask(with: url)
        {(data, response, error) in
            
            //remove extra string and null from data
            guard let data = data?.parseData(removeString: "null,") else {return}
            
            // decoode the data
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else {return}
            
            //store data
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }.resume()
        print(pokemon.count)
    }
    
//MARK: - Method to add specidic background based on the pokemon type
    func backgroundColor(forType type: String) -> UIColor {
        switch type {
        case "fire": return .orange
        case "poison": return .purple
        case "water": return .blue
        case "electric": return .yellow
        case "psychic": return .brown
        case "normal": return .magenta
        case "ground": return .green
        case "flying": return .cyan
        case "fairy": return .systemTeal
        default: return .systemPink
        }
    }
}

// MARK: - an extension to remove null and string format from retrived data

extension Data {
    func parseData(removeString string: String) -> Data? {
        
        let dataAsString = String(data: self, encoding: .utf8)
        
        //replacing the occurance of unwanted string(sentances) with " "
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        
        //return data in the form of utf8 format
        guard let data = parsedDataString?.data(using: .utf8) else { return nil}
        print("Here is the data")
        print(data)
        return data
    }
}

