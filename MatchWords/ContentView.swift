//
//  ContentView.swift
//  MatchWords
//
//  Created by Igor Silva on 02/02/23.
//

import SwiftUI
import Combine
class ViewModel: ObservableObject {
    @Published var key = ""
    @Published var value = ""
    @Published var keys: [String] = []
    @Published var values: [String] = []
    @Published var dictionary: [String: String] = ["Oi": "hi", "pão": "bread", "carro": "car", "casa": "house"]
    var cancellables = Set<AnyCancellable>()
    
    init() {
        
        keys = dictionary.keys.map{$0}.shuffled()
        values = dictionary.values.map{$0}.shuffled()
        
        $key.zip($value).sink {  key, value in
            print("Combinação key:\(key) value:\(value)")
            if (!value.isEmpty && !key.isEmpty) && self.dictionary[key] == value {
                self.key = ""
                self.value = ""
                self.keys.removeAll { $0 == key}
                self.values.removeAll { $0 == value}
            
            }
        }.store(in: &cancellables)
    }
}

struct ButtonView: View {
    var word: String
    @Binding var matchWord: String
    @State private var backgroundColor: Color = .gray
    @State var isPressed = false
    var body: some View {
        Button {
            if !isPressed {
                isPressed = true
                matchWord = word
            } else {
                isPressed = false
                matchWord = ""
            }
        } label: {
            ZStack {
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(isPressed ? .brown : backgroundColor)
                    .frame(width: 120, height: 75)
                Text(word)
                    .foregroundColor(.black)
            }
        }
    }
}


struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        
        VStack {
            HStack {
                VStack {
                    ForEach(viewModel.keys, id: \.self) { word in
                        ButtonView(word: word, matchWord: $viewModel.key)
                            .padding(10)
                    }
                }
                .padding(.trailing)
                VStack {
                    ForEach(viewModel.values, id: \.self) { word in
                        ButtonView(word: word, matchWord: $viewModel.value)
                            .padding(10)
                    }
                }
                .padding(.leading)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
