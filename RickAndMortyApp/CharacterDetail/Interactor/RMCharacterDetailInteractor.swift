//
//  RMCharacterDetailInteractor.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 09/05/24.
//  
//
import Foundation
class RMCharacterDetailInteractor {
    var presenter: RMCharacterDetailInteractorOutputProtocol?
    var manager: RMCharacterDetailManagerInputProtocol?
}
extension RMCharacterDetailInteractor: RMCharacterDetailInteractorInputProtocol {
    func getLocationDetailInManager(locationURl: String) {
        manager?.getLocationDetailInManager(locationURl: locationURl)
    }
}
extension RMCharacterDetailInteractor: RMCharacterDetailManagerOutputProtocol{
    func returnLocationDetailFromManager(location: LocationEntity) {
        presenter?.returnLocationDetailFromInteractor(location: location)
    }
}
