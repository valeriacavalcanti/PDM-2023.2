//
//  ContentView.swift
//  Telas
//
//  Created by Valéria Cavalcanti on 24/11/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var tvm: TelasViewModel
    
    var body: some View {
        if (self.tvm.tela == .Principal){
            PrincipalView(tvm: self.tvm)
        }else if (self.tvm.tela == .Sobre){
            SobreView(tvm: self.tvm)
        }else{
            FormView(tvm: self.tvm)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tvm: TelasViewModel())
    }
}
