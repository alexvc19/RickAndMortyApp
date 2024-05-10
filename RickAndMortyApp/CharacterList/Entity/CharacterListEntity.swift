//
//  CharacterListEntity.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 08/05/24.
//
import Foundation
struct CharacterListEntity: Codable{
    let info: PaginatorEntity
    let results: [CharacterEntity]
}
