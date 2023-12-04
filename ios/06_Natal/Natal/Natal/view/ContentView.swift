//
//  ContentView.swift
//  Natal
//
//  Created by Valéria Cavalcanti on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cadastro = Cadastro()
    
    var body: some View {
        NavigationView {
            main
                .navigationTitle("Pessoas")
                .toolbar {
                    ToolbarItem{
                        NavigationLink(destination: FormView()) {
                            Image(systemName: "plus")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                }
        }
        .environmentObject(self.cadastro)
    }
}

extension ContentView{
    var main: some View{
        List{
            ForEach(self.cadastro.lista){ pessoa in
                PessoaView(pessoa: pessoa)
            }
            .onDelete { indexSet in
                self.cadastro.lista.remove(atOffsets: indexSet)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
