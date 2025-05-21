//
//  LampCirclePart1.swift
//  SwiftUIC-Day2
//
//  Created by Gustavo Binder on 20/05/25.
//

import SwiftUI

struct LampCirclePart1: View {
    var isOn: Bool
    
    var circleColor: Color {
        if isOn == true {
            return .amarelo
        } else{
            return Color(uiColor: .systemGray)
        }
    }
    
    var iconColor: Color {
        if isOn == true {
            return .white
        } else{
            return Color(uiColor: .systemGray3)
        }
    }
    
    var icon: String {
        if isOn == true {
            return "lightbulb.fill"
        } else {
            return "lightbulb"
        }
    }
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 300)
                .foregroundStyle(circleColor)
            Image(systemName: icon)
                .foregroundStyle(iconColor)
                .font(.system(size: 180))
        }
        .padding()
    }
}

#Preview {
    LampCirclePart1(isOn: false)
}

