//
//  Cadastro.swift
//  Natal
//
//  Created by Valéria Cavalcanti on 04/12/23.
//

import Foundation

class Cadastro: ObservableObject{
    @Published var lista: [Pessoa]
    
    init() {
        self.lista = []
        
        self.lista.append(Pessoa(nome: "Primeiro amigo", categoria: .amigo, nota: 10))
        self.lista.append(Pessoa(nome: "Segundo conhecido", categoria: .conhecido, nota: 8))
        self.lista.append(Pessoa(nome: "Terceiro familia", categoria: .familia, nota: 6))
        self.lista.append(Pessoa(nome: "Quarto inimigo", categoria: .inimigo, nota: 4))
        self.lista.append(Pessoa(nome: "Quinto samuel", categoria: .samuel, nota: 2))
    }
}
