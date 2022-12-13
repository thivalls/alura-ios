//
//  ViewController.swift
//  foods
//
//  Created by thiago.bertolino on 12/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alimentoTextField: UITextField!
    @IBOutlet weak var felicidadeTextField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        
        let alimento = alimentoTextField.text
        let felicidade = felicidadeTextField.text
        
        print("Comi o alimento \(alimento) e fiquei com felicidade: \(felicidade)")
    }


}

