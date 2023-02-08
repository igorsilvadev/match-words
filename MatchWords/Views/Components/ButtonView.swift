//
//  ButtonView.swift
//  MatchWords
//
//  Created by Igor Silva on 06/02/23.
//

import SwiftUI

struct ButtonView: View {
    var word: String
    @Binding var matchWord: String
    @State private var backgroundColor: Color = .gray
    var body: some View {
        Button {
            if matchWord != word {
                matchWord = word
            }
        } label: {
            ZStack {
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(matchWord == word ? .brown : backgroundColor)
                    .frame(width: 120, height: 75)
                Text(word)
                    .foregroundColor(.black)
            }
        }
    }
}
