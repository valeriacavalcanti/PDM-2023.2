//
//  FormView.swift
//  Telas
//
//  Created by Valéria Cavalcanti on 24/11/23.
//

import SwiftUI

struct FormView: View {
    @ObservedObject var tvm: TelasViewModel
    
    var body: some View {
        VStack{
            Group{
                Text("Formulário")
                    .font(.title)
                
                Button("Voltar"){
                    self.tvm.tela = .Principal
                }
            }
            .padding()
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView(tvm: TelasViewModel())
    }
}
