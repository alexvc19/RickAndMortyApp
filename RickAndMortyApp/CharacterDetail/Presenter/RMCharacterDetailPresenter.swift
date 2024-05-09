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
    
}
extension RMCharacterDetailPresenter: RMCharacterDetailPresenterProtocol {
}
extension RMCharacterDetailPresenter: RMCharacterDetailInteractorOutputProtocol {
}
