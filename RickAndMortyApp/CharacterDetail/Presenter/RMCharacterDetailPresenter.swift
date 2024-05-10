//
//  RMCharacterDetailPresenter.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 09/05/24.
//  
//
import Foundation
class RMCharacterDetailPresenter {
    var view: RMCharacterDetailViewProtocol?
    var interactor: RMCharacterDetailInteractorInputProtocol?
    var router: RMCharacterDetailRouterProtocol?
    var character: CharacterEntity?
}
extension RMCharacterDetailPresenter: RMCharacterDetailPresenterProtocol {
    func getLocationDetailPresenter(locationURl: String) {
        interactor?.getLocationDetailInManager(locationURl: locationURl)
    }
}
extension RMCharacterDetailPresenter: RMCharacterDetailInteractorOutputProtocol {
    func returnLocationDetailFromInteractor(location: LocationEntity) {
        view?.showLocation(location: location)
    }
}
