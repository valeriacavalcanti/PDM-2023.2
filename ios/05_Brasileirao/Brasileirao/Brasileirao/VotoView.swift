//
//  VotoView.swift
//  Brasileirao
//
//  Created by Valéria Cavalcanti on 27/11/23.
//

import SwiftUI

struct VotoView: View {
    var voto: Voto
    
    var body: some View {
        HStack{
            Image(systemName: "person")
                .font(.largeTitle)
            VStack (alignment: .leading){
                Text(self.voto.nome)
                    .fontWeight(.bold)
                Text(self.voto.time.rawValue)
            }
            Spacer()
        }
        .padding()
    }
}

struct VotoView_Previews: PreviewProvider {
    static var previews: some View {
        VotoView(voto: Voto(nome: "Samuel", time: .Flamengo))
    }
}
