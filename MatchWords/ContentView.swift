//
//  ContentView.swift
//  MatchWords
//
//  Created by Igor Silva on 02/02/23.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button("Word") {
                    
                }
                .buttonStyle(.plain)
                .background(content: {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 75, height: 50)
                })
                .padding()
                
                Button("Word") {
                    
                }
                .buttonStyle(.plain)
                .background(content: {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 75, height: 50)
                })
                .padding()
            }
            
            HStack {
                Button("Word") {
                    
                }
                .buttonStyle(.plain)
                .background(content: {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 75, height: 50)
                })
                .padding()
                
                Button("Word") {
                    
                }
                .buttonStyle(.plain)
                .background(content: {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 75, height: 50)
                })
                .padding()
            }
            
            HStack {
                Button("Word") {
                    
                }
                .buttonStyle(.plain)
                .background(content: {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 75, height: 50)
                })
                .padding()
                
                Button("Word") {
                    
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
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
