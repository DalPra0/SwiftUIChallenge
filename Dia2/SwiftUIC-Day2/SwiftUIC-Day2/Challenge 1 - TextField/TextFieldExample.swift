//
//  TextFieldExample.swift
//  SwiftUIC-Day2
//
//  Created by Gustavo Binder on 20/05/25.
//

import SwiftUI

struct TextFieldExample: View {
    @State var texto = ""
    

    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("Label")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Spacer()
            }
            TextField("PlaceHolder                                                  olho", text: $texto)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Color(uiColor: .systemGray))
                .clipShape(.buttonBorder)
                
            HStack{
                Spacer()
                Text("Contador: \(texto.count)")
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
    }
}

#Preview {
    TextFieldExample()
}


