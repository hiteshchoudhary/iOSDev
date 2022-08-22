//
//  ContentView.swift
//  breakingBadAPI08
//
//  Created by Hitesh Choudhary on 23/08/22.
//

import SwiftUI

struct Info: Codable{
    var char_id: Int
    var name: String
    var birthday: String
    var status: String
    var appearance: [Int]
    var nickname: String
    var portrayed: String
}


struct ContentView: View {
    @State private var infos = [Info]()
    var body: some View {
        NavigationView{
            List(infos, id: \.char_id){
                info in
                VStack(alignment: .leading){
                    Text("Name: \(info.name)")
                    Text("Appearance: \(info.appearance.count)")
                    Text("Nickname: \(info.nickname)")
                }
            }
            .task {
                await fetchData()
            }
        }
        .navigationTitle("Breaking Bad")
    }
    // create URL and fetch data

    func fetchData() async{
        guard let url = URL(string: "https://www.breakingbadapi.com/api/characters") else {
            print("URL does not exists")
            return
        }
        
        do{
           let (data, _) = try await URLSession.shared.data(from: url)
            //decode the data
            if let decodedResponse = try? JSONDecoder().decode([Info].self, from: data){
                infos = decodedResponse
            }
        } catch {
            print("Invalid data or failed to fetch request")
        }
    }
        
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
