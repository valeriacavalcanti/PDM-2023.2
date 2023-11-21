//
//  ContentView.swift
//  Contador
//
//  Created by Valéria Cavalcanti on 20/11/23.
//

import SwiftUI

struct ContentView: View {
//    @State var valor = 0
    @ObservedObject var contatorVM: ContadorViewModel
    
    var body: some View {
        VStack {
            Spacer()
            titulo
            Spacer()
            HStack{
                btAdd
                btDel
            }
            Spacer()
            pitacos
            Spacer()
        }
        .padding()
        .alert(isPresented: self.$contatorVM.showPopup) {
            Alert(title: Text("Atenção!"), message: Text("Não pode!"), dismissButton: .cancel())
        }
    }
}

extension ContentView{
    var titulo: some View{
        Text("Contador de Pitacos")
            .font(.title)
            .fontWeight(.bold)
    }
}

extension ContentView{
    var btAdd: some View{
        Button("+"){
            self.contatorVM.incrementar()
        }
        .font(.largeTitle)
        .padding()
        .background(Color.green)
        .foregroundColor(Color.white)
    }
}

extension ContentView{
    var btDel: some View{
        Button("-"){
            self.contatorVM.decrementar()
        }
        .font(.largeTitle)
        .padding()
        .background(Color.red)
        .foregroundColor(Color.white)
    }
}

extension ContentView{
    var pitacos: some View{
        Text(self.contatorVM.valor.description)
            .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contatorVM: ContadorViewModel())
    }
}
