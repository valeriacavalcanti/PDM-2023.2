//
//  TelasViewModel.swift
//  Telas
//
//  Created by Valéria Cavalcanti on 24/11/23.
//

import Foundation

class TelasViewModel: ObservableObject{
    @Published var tela: Tela
    
    init(){
        self.tela = .Principal
    }
}
