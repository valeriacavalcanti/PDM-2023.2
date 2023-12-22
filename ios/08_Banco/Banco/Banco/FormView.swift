//
//  PessoaView.swift
//  Banco
//
//  Created by Valéria Cavalcanti on 21/12/23.
//

import SwiftUI

struct FormView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode) private var presentationMode
    var pessoa: Pessoa?
    @State var nome = ""
    @State var idade = 1
    
    var body: some View {
        VStack{
            Form{
                Section("Dados Pessoais") {
                    TextField("Nome: ", text: self.$nome)
                    Stepper("Idade: \(self.idade)", value: self.$idade, in: 1...100)
                }
            }
            .toolbar {
                ToolbarItem{
                    Button("Salvar"){
                        if (self.pessoa == nil){
                            var pessoa = Pessoa(context: self.viewContext)
                            pessoa.nome = self.nome
                            pessoa.idade = Int16(self.idade)
                        }else{
                            self.pessoa?.nome = self.nome
                            self.pessoa?.idade = Int16(self.idade)
                        }
                        do{
                            try self.viewContext.save()
                            self.presentationMode.wrappedValue.dismiss()
                        }catch{}
                    }
                }
            }
        }
        .onAppear(){
            self.nome = self.pessoa?.nome ?? ""
            self.idade = Int(self.pessoa?.idade ?? 1)
        }
    }
}

//struct FormView_Previews: PreviewProvider {
//    static var previews: some View {
//        PessoaView()
//    }
//}
