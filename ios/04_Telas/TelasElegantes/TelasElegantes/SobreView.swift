//
//  SobreView.swift
//  TelasElegantes
//
//  Created by Valéria Cavalcanti on 24/11/23.
//

import SwiftUI

struct SobreView: View {
    var body: some View {
        VStack{
            Text("Sobre")
        }
        .navigationTitle("Sobre")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SobreView_Previews: PreviewProvider {
    static var previews: some View {
        SobreView()
    }
}
