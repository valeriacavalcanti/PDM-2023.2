//
//  Voto.swift
//  Brasileirao
//
//  Created by Valéria Cavalcanti on 27/11/23.
//

import Foundation

class Voto : NSObject, Identifiable{
    var nome: String
    var time: Time
    
    override var description: String{
        return "\(nome) - \(time)"
    }
    
    init(nome: String, time: Time) {
        self.nome = nome
        self.time = time
    }
}
