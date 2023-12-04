//
//  Pessoa.swift
//  Natal
//
//  Created by Valéria Cavalcanti on 04/12/23.
//

import Foundation

class Pessoa: NSObject, Identifiable{
    var nome: String
    var categoria: Categoria
    var nota: Int
    
    override var description: String{
        return "\(nome) \(categoria.rawValue) \(nota)"
    }
    
    init(nome: String, categoria: Categoria, nota: Int) {
        self.nome = nome
        self.categoria = categoria
        self.nota = nota
    }
}
