//
//  PrincipalView.swift
//  Telas
//
//  Created by Valéria Cavalcanti on 24/11/23.
//

import SwiftUI

struct PrincipalView: View {
    @ObservedObject var tvm: TelasViewModel
    
    var body: some View {
        VStack{
            Group{
                Text("Principal")
                    .font(.title)
                
                Button("Formulário"){
                    self.tvm.tela = .Formulario
                }
                Button("Sobre"){
                    self.tvm.tela = .Sobre
                }
            }
            .padding()
        }
    }
}

struct PrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        PrincipalView(tvm: TelasViewModel())
    }
}
