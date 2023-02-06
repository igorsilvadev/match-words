//
//  ContentView.swift
//  MatchWords
//
//  Created by Igor Silva on 02/02/23.
//

import SwiftUI

struct MatchWordView: View {
    @StateObject private var viewModel = MatchViewModel()
    
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

struct MatchWordView_Previews: PreviewProvider {
    static var previews: some View {
        MatchWordView()
            .preferredColorScheme(.light)
    }
}
