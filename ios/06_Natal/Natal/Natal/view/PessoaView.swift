//
//  PessoaView.swift
//  Natal
//
//  Created by Valéria Cavalcanti on 04/12/23.
//

import SwiftUI

struct PessoaView: View {
    var pessoa: Pessoa
    
    var body: some View {
        HStack{
            if (self.pessoa.categoria == .amigo){
                Image(systemName: "a.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }else if (self.pessoa.categoria == .conhecido){
                Image(systemName: "c.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }else if (self.pessoa.categoria == .familia){
                Image(systemName: "f.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
            }else if (self.pessoa.categoria == .inimigo){
                Image(systemName: "i.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.purple)
            }else{
                Image(systemName: "s.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.green)
            }
            
            VStack (alignment: .leading){
                Text(self.pessoa.nome)
                    .fontWeight(.bold)
                Text(self.pessoa.nota.description)
                NavigationLink("Editar", destination: Text(pessoa.nome))
            }
            Spacer()
        }
    }
}

struct PessoaView_Previews: PreviewProvider {
    static var previews: some View {
        PessoaView(pessoa: Pessoa(nome: "Jonas", categoria: .samuel, nota: 1))
    }
}
