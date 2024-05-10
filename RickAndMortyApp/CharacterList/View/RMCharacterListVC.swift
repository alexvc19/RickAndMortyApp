//
//  RMCharacterListVC.swift
//  RickAndMortyApp
//
//  Created by CRISTIAN ALEJANDRO VELASCO CERNAS on 08/05/24.
//  
//
import Foundation
import UIKit
class RMCharacterListVC: UIViewController, RMCharacterListViewProtocol {
    var presenter: RMCharacterListPresenterProtocol?
    var characters: CharacterListEntity?
    @IBOutlet weak var charactersTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lista de personajes"
        charactersTableView.register(UINib(nibName: "RMCharacterTableViewCell", bundle: nil), forCellReuseIdentifier: "RMCharacterCell")
        presenter?.getCharacterList()
    }
    func showCharacterList(characters: CharacterListEntity) {
        DispatchQueue.main.async{
            self.characters = characters
            self.charactersTableView.reloadData()
        }
    }
}
///Protocolos TableViewDelegate y TableViewDataSource
extension RMCharacterListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters?.results.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = charactersTableView.dequeueReusableCell(withIdentifier: "RMCharacterCell") as? RMCharacterTableViewCell else {
            fatalError("No se encontro la celda")
        }
        let list = self.characters?.results
        let personage = list![indexPath.row]
        let status = personage.status
        if let url = URL(string: personage.image) {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data, error == nil else { return }
                DispatchQueue.main.async {
                    cell.characterPhoto.image = UIImage(data: data)
                }
            }
            task.resume()
        }
        if status == "Alive"{
            cell.characterStatus.tintColor = .green
        }else if status == "Dead"{
            cell.characterStatus.tintColor = .red
        }else {
            cell.characterStatus.tintColor = .gray
        }
        cell.characterStatus.setTitle(status, for: .normal)
        cell.lbName.text = personage.name
        cell.lbSpecie.text = personage.species
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let character = self.characters?.results[indexPath.row]
        print("seleccionaste a: \(character?.name)")
        presenter?.goToCharacterDetail(character: character!)
    }
}
