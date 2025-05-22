//
//  DataModel.swift
//  swiftUI-challenge-aula-03
//
//  Created by Lucas Dal Pra Brascher on 21/05/25.
//

import Foundation


struct DataModel {
    let devices: [Device] = [
        Device(icon: "swift", title: "Swift", description: "Voando alto"),
        Device(icon: "applewatch.side.right", title: "Watch", description: "Who watches the Apple Watch"),
        Device(icon: "ipod", title: "iPod", description: "Mil músicas na sua mão"),
        Device(icon: "iphone.gen1", title: "iPhone de Botão", description: "O clássico"),
        Device(icon: "iphone.gen2", title: "iPhone", description: "Já mudou"),
        Device(icon: "iphone", title: "iPhone Ilhado", description: "Animações lindas"),
        Device(icon: "magicmouse", title: "Magic Mouse", description: "O terror do carregador"),
        Device(icon: "appletv", title: "Aptv01.aud", description: "Mudar o nome não é uma opção"),
        Device(icon: "homepod", title: "Homepod", description: "Somzão"),
        Device(icon: "laptopcomputer", title: "MacBook", description: "O maior que temos")
    ]
    
}
