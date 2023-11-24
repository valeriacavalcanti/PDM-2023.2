//
//  ContentView.swift
//  TelasElegantes
//
//  Created by Valéria Cavalcanti on 24/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            principal
                .navigationTitle("Principal")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem {
                        Label("", systemImage: "person")
                    }
                    ToolbarItem {
                        Label("", systemImage: "person")
                    }
                }
        }
    }
}

extension ContentView{
    var principal: some View{
        VStack {
            Group{
                NavigationLink("Formulário", destination: FormView())
                NavigationLink("Sobre", destination: SobreView())
                NavigationLink("Eita", destination: Text("Eita"))
                NavigationLink("Pessoa", destination: Label("Você", systemImage: "person"))
                NavigationLink("Imagem", destination: Image("macaquinhos"))
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
