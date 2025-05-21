//
//  ExercicioBotao.swift
//  Dia1
//
//  Created by Lucas Dal Pra Brascher on 19/05/25.
//

import SwiftUI

struct ExercicioBotao: View {
    var body: some View {
        VStack(spacing: 32){
            Button("Simple Button"){
                // acao
            }
            
            Button("Simple Button"){
                // acao
            }.foregroundStyle(.green)
            
            Button("Simple Button"){
                // acao
            }.padding(.horizontal, 16)
                .padding(.vertical, 8)
                .foregroundStyle(.white)
                .background(.green)
            
            
            Button{
                
            } label: {
                HStack{
                    Image(systemName: "trash")
                    Text("Delete")
                }
            }
            
            Button{
                
            } label: {
                VStack{
                    Image(systemName: "trash")
                        .padding()
                        
                    Text("Delete")
                }
            }
            
            Button{
            } label: {
                VStack{
                    Text("Rounded button")
                    
                        .padding()
                        .foregroundStyle(.blue)
                    
                    
                }
            }
            
            Button{
            } label: {
                VStack{
                    Text("Rounded button")
                    
                        .padding()
                        .foregroundStyle(.blue)
                    
                    
                }
            }
            
            Button{
            } label: {
                VStack{
                    Text("Rounded button")
                    
                        .padding()
                        .foregroundStyle(.blue)
                    
                    
                }
            }
        }
    }
}

#Preview {
    ExercicioBotao()
}
