//
//  LampCirclePart2.swift
//  SwiftUIC-Day2
//
//  Created by Gustavo Binder on 20/05/25.
//

import SwiftUI

struct LampCirclePart2: View {
    
    var isOn: Bool
    var type: Int
    
    var circleColor: Color {
        if isOn == true {
            // retorna cor com base no tipo da lampada
            if type == 0 {
                return .amarelo
            } else if type == 1 {
                return .menta
            } else {
                return .azul
            }
            
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
            if type == 0 {
                return "lightbulb.fill"
            } else if type == 1 {
                return "lightbulb.led.fill"
            } else {
                return "lightbulb.led.wide.fill"
            }
        } else {
            if type == 0 {
                return "lightbulb"
            } else if type == 1 {
                return "lightbulb.led"
            } else {
                return "lightbulb.led.wide"
            }
        }
    }

    var body: some View {
        
        ZStack {
            
            ZStack {
                Circle()
                    .frame(width: 300)
                    .foregroundStyle(circleColor)
                Image(systemName: icon)
                    .foregroundStyle(iconColor)
                    .font(.system(size: 180))
            }
        }
    }
}

#Preview {
    LampCirclePart2(isOn: false, type: 0)
}
