//
//  LampCirclePart1.swift
//  SwiftUIC-Day2
//
//  Created by Gustavo Binder on 20/05/25.
//

import SwiftUI

struct LampCirclePart: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width: 300)
                    .foregroundStyle(.amarelo)
                Image(systemName: "lightbulb.fill")
                    .foregroundStyle(.white)
                    .font(.system(size: 180))
            }
            .padding()
            
            ZStack {
                Circle()
                    .frame(width: 300)
                    .foregroundStyle(.menta)
                Image(systemName: "")
                    .foregroundStyle(.white)
                    .font(.system(size: 180))
            }
            .padding()
            
            ZStack {
                Circle()
                    .frame(width: 300)
                    .foregroundStyle(.amarelo)
                Image(systemName: "lightbulb.fill")
                    .foregroundStyle(.white)
                    .font(.system(size: 180))
            }
            .padding()


        }
    }
}

#Preview {
    LampCirclePart()
}
