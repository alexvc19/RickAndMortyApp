//
//  RMCharacterDetailRouter.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 09/05/24.
//  
//
import Foundation
import UIKit
class RMCharacterDetailRouter: RMCharacterDetailRouterProtocol {
    static func createCharacterDetailViewController(character: CharacterEntity) -> UIViewController {
        let view = RMCharacterDetailVC(nibName: "RMCharacterDetailVC", bundle: Bundle.main)
        var interactor: RMCharacterDetailInteractorInputProtocol & RMCharacterDetailManagerOutputProtocol = RMCharacterDetailInteractor()
        var presenter: RMCharacterDetailPresenterProtocol & RMCharacterDetailInteractorOutputProtocol = RMCharacterDetailPresenter()
        let router: RMCharacterDetailRouterProtocol = RMCharacterDetailRouter()
        var manager: RMCharacterDetailManagerInputProtocol & ClientHttpOutputProtocol = RMCharacterDetailManager()
        let clientHttp: ClientHttpInputProtocol = ClientHttp()
        interactor.manager = manager
        interactor.presenter = presenter
        view.presenter = presenter
        presenter.router = router
        presenter.view = view
        presenter.character = character
        presenter.interactor = interactor
        manager.interactor = interactor
        manager.httpClient = clientHttp
        clientHttp.manager = manager
        return view
    }
}

