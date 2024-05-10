//
//  RMCharacterDetailManager.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 09/05/24.
//
import Foundation
class RMCharacterDetailManager{
    var interactor: RMCharacterDetailManagerOutputProtocol?
    var httpClient: ClientHttpInputProtocol?
    var bundle: String?
}
extension RMCharacterDetailManager: RMCharacterDetailManagerInputProtocol{
    func getLocationDetailInManager(locationURl: String) {
        let url = locationURl
        print("la url es: \(url)")
        if locationURl != ""{
            httpClient?.get(url: url, model: LocationEntity.self, token: false)
        }
    }
}
extension RMCharacterDetailManager: ClientHttpOutputProtocol{
    func returnResponseSucessful(model: Codable) {
        interactor?.returnLocationDetailFromManager(location: model as! LocationEntity)
    }
    func returnResponseWithError(message: String) {
        print("error: \(message)")
    }
}
