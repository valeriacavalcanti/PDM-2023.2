//
//  SobreView.swift
//  Telas
//
//  Created by Valéria Cavalcanti on 24/11/23.
//

import SwiftUI

struct SobreView: View {
    @ObservedObject var tvm: TelasViewModel
    
    var body: some View {
        VStack{
            Group{
                Text("Sobre")
                    .font(.title)
                
                Button("Voltar"){
                    self.tvm.tela = .Principal
                }
            }
            .padding()
        }
    }
}

struct SobreView_Previews: PreviewProvider {
    static var previews: some View {
        SobreView(tvm: TelasViewModel())
    }
}
