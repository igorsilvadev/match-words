//
//  ContentView.swift
//  MatchWords
//
//  Created by Igor Silva on 02/02/23.
//

import SwiftUI

struct ButtonView: View {
    var word: String
    var body: some View {
        Button(word) {
            
        }
        .buttonStyle(.plain)
        .background(content: {
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 75, height: 50)
        })
        .padding()
    }
}


struct ContentView: View {
    var dictionary: [String: String] = ["Oi": "hi", "pão": "bread", "carro": "car", "casa": "house"]
    var body: some View {
        
        VStack {
            HStack {
                VStack {
                    ForEach(dictionary.keys.map{$0}, id: \.self) { word in
                        ButtonView(word: word)
                    }
                }
                VStack {
                    ForEach(dictionary.values.map{$0}, id: \.self) { word in
                        ButtonView(word: word)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
