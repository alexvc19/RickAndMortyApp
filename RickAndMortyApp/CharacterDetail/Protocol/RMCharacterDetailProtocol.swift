//
//  RMCharacterDetailProtocol.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 09/05/24.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de RMCharacterDetail
protocol RMCharacterDetailViewProtocol {
    // PRESENTER -> VIEW
    var presenter: RMCharacterDetailPresenterProtocol? {get set}
    func showLocation(location: LocationEntity)
}
/// Protocolo que define los métodos y atributos para el routing de RMCharacterDetail
protocol RMCharacterDetailRouterProtocol {
    // PRESENTER -> ROUTING
    static func createCharacterDetailViewController(character: CharacterEntity) ->UIViewController
}
/// Protocolo que define los métodos y atributos para el Presenter de RMCharacterDetail
protocol RMCharacterDetailPresenterProtocol {
    // VIEW -> PRESENTER
    var view: RMCharacterDetailViewProtocol? {get set}
    var router: RMCharacterDetailRouterProtocol? {get set}
    var interactor: RMCharacterDetailInteractorInputProtocol? {get set}
    var character: CharacterEntity? {get set}
    func getLocationDetailPresenter(locationURl: String)
}
/// Protocolo que define los métodos y atributos para el Interactor de RMCharacterDetail
protocol RMCharacterDetailInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    var presenter: RMCharacterDetailInteractorOutputProtocol? {get set}
    var manager: RMCharacterDetailManagerInputProtocol? {get set}
    func getLocationDetailInManager(locationURl: String)
}
/// Protocolo que define los métodos y atributos para el Interactor de RMCharacterDetail
protocol RMCharacterDetailInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
    func returnLocationDetailFromInteractor(location: LocationEntity)
}
protocol RMCharacterDetailManagerInputProtocol{
    var interactor: RMCharacterDetailManagerOutputProtocol? {get set}
    var httpClient: ClientHttpInputProtocol? {get set}
    func getLocationDetailInManager(locationURl: String)
}
protocol RMCharacterDetailManagerOutputProtocol{
    func returnLocationDetailFromManager(location: LocationEntity)
}
