//
//  ContentView.swift
//  SwiftUIC-Day2
//
//  Created by Gustavo Binder on 20/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "Isoo")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}




#Preview {
    ContentView()
}
