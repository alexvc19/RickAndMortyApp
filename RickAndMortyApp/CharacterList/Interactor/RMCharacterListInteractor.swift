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
    var manager: RMCharacterListManagerInputProtocol?
    
}
extension RMCharacterListInteractor: RMCharacterListInteractorInputProtocol {
    func getCharacterListInInteractor() {
        manager?.getCharacterListInManager()
    }
}
extension RMCharacterListInteractor: RMCharacterListManagerOutputProtocol{
    func returnCharacterListFromManager(characters: CharacterListEntity) {
        presenter?.returnCharacterListFromInteractor(characters: characters)
    }
}
