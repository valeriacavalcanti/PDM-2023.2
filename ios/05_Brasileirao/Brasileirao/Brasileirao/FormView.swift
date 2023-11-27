//
//  FormView.swift
//  Brasileirao
//
//  Created by Valéria Cavalcanti on 27/11/23.
//

import SwiftUI

struct FormView: View {
    @State var nome: String = ""
    @State var time: Time = .Flamengo
    
    @EnvironmentObject var cadastro: Cadastro
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        tela
            .navigationTitle("Voto")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem{
                    Button("Salvar"){
                        self.cadastro.lista.append(Voto(nome: self.nome, time: self.time))
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }
            }
    }
}

extension FormView{
    var tela: some View{
        VStack{
            Spacer()
            
            TextField("Informe seu nome: ", text: self.$nome)
            
            Spacer()
            
            Picker("Time", selection: self.$time) {
                Text(Time.Atletico.rawValue).tag(Time.Atletico)
                Text(Time.Botafogo.rawValue).tag(Time.Botafogo)
                Text(Time.Flamengo.rawValue).tag(Time.Flamengo)
                Text(Time.Palmeiras.rawValue).tag(Time.Palmeiras)
            }.pickerStyle(.inline)
            
            Spacer()
        }
        .padding()
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
