//
//  PaginatorEntity.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 08/05/24.
//

import Foundation
struct PaginatorEntity: Codable{
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
