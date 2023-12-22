//
//  ContentView.swift
//  Banco
//
//  Created by Valéria Cavalcanti on 20/12/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Pessoa.nome, ascending: true)],
        animation: .default)
    private var pessoas: FetchedResults<Pessoa>

    var body: some View {
        NavigationView {
            VStack{
                List {
                    ForEach(pessoas) { pessoa in
                        NavigationLink {
                            FormView(pessoa: pessoa)
                        } label: {
                            Text(pessoa.nome ?? "")
                        }
                    }
                    .onDelete(perform: deleteItems)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
                    NavigationLink(destination: FormView()) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }

    private func addItem() {
//        withAnimation {
//            let novaPessoa = Pessoa(context: viewContext)
//            novaPessoa.nome = "nome"
//            novaPessoa.idade = 10
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
        
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { pessoas[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
