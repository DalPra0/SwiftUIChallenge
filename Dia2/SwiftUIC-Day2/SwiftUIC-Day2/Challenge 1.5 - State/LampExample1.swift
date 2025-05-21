//
//  LampExample1.swift
//  SwiftUIC-Day2
//
//  Created by Gustavo Binder on 20/05/25.
//

import SwiftUI

struct LampExamplePart1: View {
    @State var isOn = false
    var body: some View {
        VStack {
            LampCirclePart1(isOn: is)
            Toggle("Lampada", isOn: $isOn)
        }
        .padding()
    }
}

#Preview {
    LampExamplePart1()
}


