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
}
extension RMCharacterListPresenter: RMCharacterListInteractorOutputProtocol {
}
