//
//  ForEachView.swift
//  swiftUI-challenge-aula-03
//
//  Created by Lucas Dal Pra Brascher on 21/05/25.
//

import SwiftUI

struct ForEachView: View {
    let dataModel = DataModel()
    
    var body: some View {
        ScrollView{
            VStack(spacing: 16){
                ForEach(dataModel.devices){ device in
                    
                            HStack(spacing: 16){
                                Image(systemName: device.icon)
                                    .font(.largeTitle)
                                    .bold()
                                    .symbolRenderingMode(.monochrome)
                                    .foregroundStyle(.purple)
                                
                                
                                VStack(alignment: .leading){
                                    Text(device.title)
                                        .font(.title)
                                        .bold()
                                        
                                    Text(device.description)
                                }
                                Spacer()
                        }
                        .padding(16)
                        .background(.white)
                        .cornerRadius(16)
                    
                }
            }
            .padding()
        }
        .background(Color(uiColor: .systemGray6))
    }
}

#Preview {
    ForEachView()
}
