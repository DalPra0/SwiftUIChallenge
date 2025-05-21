//
//  LampExemplePart2.swift
//  Example SwiftUI DayTwo
//
//  Created by Djenifer Renata Pereira on 01/06/23.
//  Updated by Gustavo Isoo on 15/05/25
//

import SwiftUI

struct LampExamplePart2: View {
    @State var isOn = false
    @State var type: Int = 0
    
    var body: some View {
        VStack {
            LampCirclePart2(isOn: isOn, type: type)
            
            Toggle("Lampada", isOn: $isOn)
                .padding()
            Picker("Types", selection: $type) {
                Text("Quente").tag(0)
                Text("Neutro").tag(1)
                Text("Frio").tag(2)
            }
            .pickerStyle(.segmented)
        }
        .padding()
    }
}

#Preview {
    LampExamplePart2()
}

