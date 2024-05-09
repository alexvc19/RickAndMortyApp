//
//  RMCharacterListVC.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 08/05/24.
//  
//

import Foundation
import UIKit

class RMCharacterListVC: UIViewController {

    var presenter: RMCharacterListPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
///Protocolo para recibir datos de presenter.
extension RMCharacterListVC: RMCharacterListViewProtocol {
}
