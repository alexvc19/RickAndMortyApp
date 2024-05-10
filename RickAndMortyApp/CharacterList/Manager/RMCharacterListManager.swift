//
//  RMCharacterListManager.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 08/05/24.
//

import Foundation
class RMCharacterListManager{
    var interactor: RMCharacterListManagerOutputProtocol?
    var httpClient: ClientHttpInputProtocol?
    var bundle: String?
}
extension RMCharacterListManager: RMCharacterListManagerInputProtocol{
    func getCharacterListInManager() {
        let url = ConstansUrl.urlCharacters
        httpClient?.get(url: url, model: CharacterListEntity.self, token: false)
    }
}
extension RMCharacterListManager: ClientHttpOutputProtocol{
    func returnResponseSucessful(model: Codable) {
        interactor?.returnCharacterListFromManager(characters: model as! CharacterListEntity)
    }
    
    func returnResponseWithError(message: String) {
        print("Paso algo\(message)")
    }
}
