//
//  ContentView.swift
//  Brasileirao
//
//  Created by Valéria Cavalcanti on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cadastro = Cadastro()
    
    var body: some View {
        NavigationView {
            tela
                .navigationTitle("Votos")
                .toolbar {
                    ToolbarItem{
                        NavigationLink(destination: FormView()) {
                            Image(systemName: "plus")
                        }
                    }
                }
        }.environmentObject(self.cadastro)
    }
}

extension ContentView{
    var tela: some View{
        VStack {
//            Text(self.cadastro.lista.count.description)
//                .font(.largeTitle)
            List{
                ForEach(self.cadastro.lista){ voto in
//                    Text(voto.description)
                    VotoView(voto: voto)
                }
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
