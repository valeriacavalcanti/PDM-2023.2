//
//  Cadastro.swift
//  Brasileirao
//
//  Created by Valéria Cavalcanti on 27/11/23.
//

import Foundation

class Cadastro: ObservableObject{
    @Published var lista: [Voto]
    
    init() {
        self.lista = []
    }
}
