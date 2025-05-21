//
//  ContentView.swift
//  Dia1
//
//  Created by Lucas Dal Pra Brascher on 19/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.pink)
            Rectangle()
                .fill(Color.green)
                .padding(.leading, 40)
                .padding(.top, 40)
            Rectangle()
                .fill(Color.blue)
                .padding(.leading, 80)
                .padding(.top, 80)
        }
    }
}
#Preview {
    ContentView()
}
