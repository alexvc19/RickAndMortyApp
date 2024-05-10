//
//  CharacterEnity.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 08/05/24.
//

import Foundation
struct CharacterEntity: Codable{
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: OriginEntity
    let location: CharacterLocationEntity
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
