//
//  ContentView.swift
//  swiftUI-challenge-aula-03
//
//  Created by Lucas Dal Pra Brascher on 21/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            List{
                Section{
                    Text("Binder")
                    Text("Gonzatto")
                    Text("Veloso")
                    Text("Maicris")
                    Text("Mark")
                    Text("Ana")
                } header: {
                    Text("Mentores senior")
                } footer: {
                    Text("Uma lista com o nome de todos os mentores")
                }
                
                Section{
                    Text("Afonso")
                    Text("Flora")
                    Text("Gabi")
                    Text("Isoo")
                    Text("Munhoz")
                    Text("Naomi")
                    Text("Mari")
                    Text("Theo")
                    Text("Nath")
                    Text("Jujuba")
                } header: {
                    Text("Mentores JR.")
                } footer: {
                    Text("Uma lista com o nome de todos os mentores jr.")
                }
                
                Section{
                    Text("Bomdianos")
                    Text("Boatardianos")
                } header: {
                    Text("Alunos")
                } footer: {
                    Text("Uma lista com o nome de todos os alunos")
                }
            }
    }
}

#Preview {
    ContentView()
}
