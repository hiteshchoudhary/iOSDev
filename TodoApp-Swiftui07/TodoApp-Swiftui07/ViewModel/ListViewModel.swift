//
//  ListViewModel.swift
//  TodoApp-Swiftui07
//
//  Created by Hitesh Choudhary on 11/08/22.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
}
