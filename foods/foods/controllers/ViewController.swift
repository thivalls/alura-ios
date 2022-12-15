//
//  ViewController.swift
//  foods
//
//  Created by thiago.bertolino on 12/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alimentoTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    @IBAction func add(_ sender: Any) {
        
//        if let alimento = alimentoTextField?.text{
//            if let felicidadeInput = felicidadeTextField?.text, let felicidade = Int(felicidadeInput) {
//                let refeicao = Refeicao(nome: alimento, felicidade: felicidade)
//
//                print("Comi o alimento \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
//            }
//        } else {
//            print("Algum valor está errado tente novamente")
//        }
        
//        if let alimentoInput = alimentoTextField?.text, let felicidadeInput = felicidadeTextField?.text {
//            let alimento = alimentoInput
//            if let felicidade = Int(felicidadeInput) {
//                let refeicao = Refeicao(nome: alimento, felicidade: felicidade)
//
//                print("Comi o alimento \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
//            }
//        } else {
//            print("Algum valor está errado tente novamente")
//        }
        
        guard let alimento = alimentoTextField?.text else { return }
        guard let felicidadeOriginal = felicidadeTextField?.text, let felicidade = Int(felicidadeOriginal) else { return }
        
        if felicidade > 5 { return }
        
        let refeicao = Refeicao(nome: alimento, felicidade: felicidade)
        
        print("Comi o alimento \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
    }


}

