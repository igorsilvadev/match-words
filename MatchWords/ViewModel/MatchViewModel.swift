//
//  MatchViewModel.swift
//  MatchWords
//
//  Created by Igor Silva on 06/02/23.
//

import Foundation
import Combine

class MatchViewModel: ObservableObject {
    @Published var key = ""
    @Published var value = ""
    @Published var keys: [String] = []
    @Published var values: [String] = []
    @Published var dictionary: [String: String] = ["Oi": "hi", "pão": "bread", "carro": "car", "casa": "house"]
    var cancellables = Set<AnyCancellable>()
    
    init() {
        
        keys = dictionary.keys.map{$0}.shuffled()
        values = dictionary.values.map{$0}.shuffled()
        
        $key.combineLatest($value).sink {  key, value in
            print("Combinação key:\(key) value:\(value)")
            if (!value.isEmpty && !key.isEmpty) && self.dictionary[key] == value {
                self.keys.removeAll { $0 == key}
                self.values.removeAll { $0 == value}
            
            } else if (!value.isEmpty && !key.isEmpty) {
                print("Palavras erradas")
            }
        }.store(in: &cancellables)
    }
}
