//
//  RMCharacterListPresenter.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 08/05/24.
//  
//
import Foundation
class RMCharacterListPresenter {
    var view: RMCharacterListViewProtocol?
    var interactor: RMCharacterListInteractorInputProtocol?
    var router: RMCharacterListRouterProtocol?
}
extension RMCharacterListPresenter: RMCharacterListPresenterProtocol {
    func getCharacterList() {
        interactor?.getCharacterListInInteractor()
    }
    func goToCharacterDetail(character: CharacterEntity) {
        router?.changeToCharacterDetailView(view: view!, character: character)
    }
}
extension RMCharacterListPresenter: RMCharacterListInteractorOutputProtocol {
    func returnCharacterListFromInteractor(characters: CharacterListEntity) {
        view?.showCharacterList(characters: characters)
    }
}
