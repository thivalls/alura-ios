//
//  ViewController.swift
//  table-view
//
//  Created by thiago.bertolino on 15/12/22.
//

import UIKit

class ViewController: UITableViewController {
    
    let listOfItems = ["Banana", "Sorvete"]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Iniciando retorno do método
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        // Pegando valor da lista através do iterador indexPath.row
        let refeicao = listOfItems[indexPath.row]
        
        // Setando o valor na célula a cada iteração
        cell.textLabel?.text = refeicao
        
        return cell
    }


}

