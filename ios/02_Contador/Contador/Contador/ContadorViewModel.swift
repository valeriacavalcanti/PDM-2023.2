//
//  ContadorViewModel.swift
//  Contador
//
//  Created by Valéria Cavalcanti on 20/11/23.
//

import Foundation

class ContadorViewModel: ObservableObject{
    @Published var valor: Int
    @Published var showPopup: Bool
    
    init(){
        self.valor = 0
        self.showPopup = false
    }
    
    func incrementar() {
        self.valor += 1
    }
    
    func decrementar(){
        if (self.valor > 0){
            self.valor -= 1
        }else{
            self.showPopup = true
        }
    }
}
