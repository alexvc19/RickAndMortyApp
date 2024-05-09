//
//  RMCharacterListInteractor.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 08/05/24.
//  
//

import Foundation

class RMCharacterListInteractor {
    var presenter: RMCharacterListInteractorOutputProtocol?
    
}
extension RMCharacterListInteractor: RMCharacterListInteractorInputProtocol {
}
