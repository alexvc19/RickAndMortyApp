//
//  RMCharacterDetailVC.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 09/05/24.
//  
//

import Foundation
import UIKit

class RMCharacterDetailVC: UIViewController {

    var presenter: RMCharacterDetailPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
///Protocolo para recibir datos de presenter.
extension RMCharacterDetailVC: RMCharacterDetailViewProtocol {
}
