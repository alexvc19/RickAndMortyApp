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
    var character: CharacterEntity?
    var location: LocationEntity?
    @IBOutlet weak var characterPhoto: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbStatus: UILabel!
    @IBOutlet weak var lbGener: UILabel!
    @IBOutlet weak var lbSpecie: UILabel!
    @IBOutlet weak var lbOriginName: UILabel!
    @IBOutlet weak var lbOrigin: UILabel!
    @IBOutlet weak var lbOriginType: UILabel!
    @IBOutlet weak var lbOriginDimension: UILabel!
    @IBOutlet weak var lbLocationName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detalle del personaje"
        character = presenter?.character
        presenter?.getLocationDetailPresenter(locationURl: character?.origin.url ?? "")
        initAtributtes()
    }
    func initAtributtes(){
        if let url = URL(string: character!.image) {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data, error == nil else { return }
                DispatchQueue.main.async {
                    self.characterPhoto.image = UIImage(data: data)
                }
            }
            task.resume()
        }
        lbTitle.text = character!.name + " - " + character!.type
        lbSpecie.text = character?.species
        lbStatus.text = character?.status
        lbGener.text = character?.gender
        lbOriginName.text = character?.origin.name
        lbLocationName.text = character?.location.name
    }
}
///Protocolo para recibir datos de presenter.
extension RMCharacterDetailVC: RMCharacterDetailViewProtocol {
    func showLocation(location: LocationEntity) {
        self.location = location
        DispatchQueue.main.async {
            self.lbOrigin.text = location.name
            self.lbOriginType.text = location.type
            self.lbOriginDimension.text = location.dimension
        }
    }
}
