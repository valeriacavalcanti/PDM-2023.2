//
//  FormView.swift
//  Natal
//
//  Created by Valéria Cavalcanti on 04/12/23.
//

import SwiftUI

struct FormView: View {
    @State var nome: String = ""
    @State var categoria: Categoria = .samuel
    @State var nota: Int = 1
    @EnvironmentObject var cadastro: Cadastro
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        formulario
            .navigationTitle("Formulário")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem{
                    Button("Salvar"){
                        self.cadastro.lista.append(Pessoa(nome: nome, categoria: categoria, nota: nota))
                        self.presentation.wrappedValue.dismiss()
                    }
                }
            }
    }
}

extension FormView{
    var formulario: some View{
        Form {
            Section ("NOME") {
                TextField("Informe o nome", text: self.$nome)
            }
            Section("CATEGORIA"){
                Picker("Selecione a categoria", selection: self.$categoria) {
                    Text("Amigo").tag(Categoria.amigo)
                    Text("Conhecido").tag(Categoria.conhecido)
                    Text("Família").tag(Categoria.familia)
                    Text("Inimigo").tag(Categoria.inimigo)
                    Text("Samuel").tag(Categoria.samuel)
                }
            }
            Section("NOTA"){
                Stepper("Nota: \(self.nota)", value: self.$nota, in: 1...10)
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
