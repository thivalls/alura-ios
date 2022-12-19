//
//  TableViewController.swift
//  eggplant-brownie
//
//  Created by thiago.bertolino on 16/12/22.
//  Copyright © 2022 Alura. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, AdicionaRefeicaoViewControllerDelagate {
    
    var listOfItems = [
        Refeicao(nome: "Macarrão", felicidade: 3),
        Refeicao(nome: "Comida Japonesa", felicidade: 5),
        Refeicao(nome: "Comida Chinesa", felicidade: 5),
        Refeicao(nome: "Churros", felicidade: 2)
    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        let item = listOfItems[indexPath.row]
        cell.textLabel?.text = item.nome + " => felicidade: " + String(item.felicidade)
        
        return cell
    }
    
    func add(_ refeicao: Refeicao) {
        self.listOfItems.append(refeicao)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? AdicionaRefeicaoViewController {
            viewController.delegate = self
        }
    }
    
}
