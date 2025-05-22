//
//  SongModel.swift
//  EdnaPlaylist
//
//  Created by Lucas Dal Pra Brascher on 22/05/25.
//

import Foundation

struct Song: Identifiable {
    let id = UUID()
    
    let imagem: String
    let title: String
    let artist: String
    let explicit: Bool
}
