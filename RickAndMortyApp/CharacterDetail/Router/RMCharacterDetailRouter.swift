//
//  RMCharacterDetailRouter.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 09/05/24.
//  
//

import Foundation
import UIKit

class RMCharacterDetailRouter {
    private var view: RMCharacterDetailVC
    private var presenter: RMCharacterDetailPresenter
    private var interactor: RMCharacterDetailInteractor
    private var window: UIWindow?
    init(in window: UIWindow?) {
        self.view = RMCharacterDetailVC()
        self.presenter = RMCharacterDetailPresenter()
        self.interactor = RMCharacterDetailInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
        self.window = window
    }
    func showView() {
        window?.rootViewController = UINavigationController(rootViewController: view)
        window?.makeKeyAndVisible()
    }
}
extension RMCharacterDetailRouter: RMCharacterDetailRouterProtocol {
}

