//
//  RMCharacterListProtocol.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 08/05/24.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de RMCharacterList
protocol RMCharacterListViewProtocol {
    // PRESENTER -> VIEW
    var presenter: RMCharacterListPresenterProtocol? {get set}
    func showCharacterList(characters: CharacterListEntity)
}
/// Protocolo que define los métodos y atributos para el routing de RMCharacterList
protocol RMCharacterListRouterProtocol {
    // PRESENTER -> ROUTING
    static func createCharacterlistViewController() -> UIViewController
    func changeToCharacterDetailView(view: RMCharacterListViewProtocol, character: CharacterEntity)
}
/// Protocolo que define los métodos y atributos para el Presenter de RMCharacterList
protocol RMCharacterListPresenterProtocol {
    // VIEW -> PRESENTER
    var view: RMCharacterListViewProtocol? {get set}
    var router: RMCharacterListRouterProtocol? {get set}
    var interactor: RMCharacterListInteractorInputProtocol? {get set}
    func getCharacterList()
    func goToCharacterDetail(character: CharacterEntity)
}
/// Protocolo que define los métodos y atributos para el Interactor de RMCharacterList
protocol RMCharacterListInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    var presenter: RMCharacterListInteractorOutputProtocol? {get set}
    var manager: RMCharacterListManagerInputProtocol? {get set}
    func getCharacterListInInteractor()
}
/// Protocolo que define los métodos y atributos para el Interactor de RMCharacterList
protocol RMCharacterListInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
    func returnCharacterListFromInteractor(characters: CharacterListEntity)
}
//
protocol RMCharacterListManagerInputProtocol{
    var interactor: RMCharacterListManagerOutputProtocol? {get set}
    var httpClient: ClientHttpInputProtocol? {get set}
    func getCharacterListInManager()
}
protocol RMCharacterListManagerOutputProtocol{
    func returnCharacterListFromManager(characters: CharacterListEntity)
}
