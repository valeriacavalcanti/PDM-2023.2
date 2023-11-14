//
//  ContentView.swift
//  Exemplo
//
//  Created by Valéria Cavalcanti on 13/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            HStack{
                Text("x")
                Text("yy")
                Text("www")
                Text("zzzz")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
