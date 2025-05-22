//
//  ContentView.swift
//  EdnaPlaylist
//
//  Created by Lucas Dal Pra Brascher on 21/05/25.
//

import SwiftUI

struct ContentView: View {
    let dataModel = DataModel()
    var body: some View {
        VStack(){
            
            Image("Selfie")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(.top, 40)
            
            
            HStack{
                Image(systemName: "arrow.down.circle.fill")
                Image(systemName: "person.badge.plus.fill")
                    .padding(.trailing, 250)
                Image(systemName: "play.circle.fill")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundStyle(.purple)
            }
            VStack(alignment: .leading){
                Text("Playlist babilonica")
                    .font(.title)
                    .bold()
                Text("Essa playlist é destinada aos Jr. lerners da apple dev academy")
            }
            .padding(.bottom, )
            HStack(){
                Circle()
                    .fill(.purple)
                    .frame(width: 30, height: 30)
                    .padding(.leading, 20)
                    .padding(.bottom, 7)
                Text("Playlist da edna")
                    .padding(.trailing, )
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView{
                VStack(alignment: .leading){
                    
                    ForEach(dataModel.songs){ song in
                        VStack(alignment: .leading){
                            HStack(){
                                Image(song.imagem)
                                    .resizable()
                                    .frame(width: 55, height: 55)
                                VStack(alignment: .leading){
                                    Text(song.title)
                                    HStack{
                                        if song.explicit {
                                            Image(systemName: "e.square.fill")
                                        }
                                        Text(song.artist)
                                    }
                                }
                            }
                        }
                    }
                }.padding(.horizontal, 0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
            }
        }
    }
}
#Preview {
    ContentView()
}
