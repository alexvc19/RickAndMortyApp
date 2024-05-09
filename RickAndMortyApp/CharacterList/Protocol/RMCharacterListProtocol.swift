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
}
/// Protocolo que define los métodos y atributos para el routing de RMCharacterList
protocol RMCharacterListRouterProtocol {
    // PRESENTER -> ROUTING
    static func createCharacterlistViewController() -> UIViewController
}
/// Protocolo que define los métodos y atributos para el Presenter de RMCharacterList
protocol RMCharacterListPresenterProtocol {
    // VIEW -> PRESENTER
}
/// Protocolo que define los métodos y atributos para el Interactor de RMCharacterList
protocol RMCharacterListInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
}
/// Protocolo que define los métodos y atributos para el Interactor de RMCharacterList
protocol RMCharacterListInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
}

