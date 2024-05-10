//
//  RMCharacterListRouter.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 08/05/24.
//  
//
import Foundation
import UIKit
class RMCharacterListRouter: RMCharacterListRouterProtocol {
    static func createCharacterlistViewController() -> UIViewController {
        let view = RMCharacterListVC(nibName: "RMCharacterListVC", bundle: Bundle.main)
        var interactor: RMCharacterListInteractorInputProtocol & RMCharacterListManagerOutputProtocol = RMCharacterListInteractor()
        var presenter: RMCharacterListPresenterProtocol & RMCharacterListInteractorOutputProtocol = RMCharacterListPresenter()
        let router: RMCharacterListRouterProtocol = RMCharacterListRouter()
        let navigationController = UINavigationController(rootViewController: view)
        var manager: RMCharacterListManagerInputProtocol & ClientHttpOutputProtocol = RMCharacterListManager()
        let clientHttp: ClientHttpInputProtocol = ClientHttp()
        interactor.manager = manager
        interactor.presenter = presenter
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        manager.interactor = interactor
        manager.httpClient = clientHttp
        clientHttp.manager = manager
        return navigationController
    }
    func changeToCharacterDetailView(view: RMCharacterListViewProtocol, character: CharacterEntity) {
        if let view = view as? RMCharacterListVC{
            let navigation = view.navigationController
            navigation?.pushViewController(RMCharacterDetailRouter.createCharacterDetailViewController(character: character), animated: true)
        }
    }
}
