import UIKit

class Refeicao {
    let nome:String
    let felicidade:String
    let items: Array<Item> = []
    
    init(nome:String, felicidade:String) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    func getTotalCalorias() -> Double {
        var total: Double = 0
        for item in self.items {
            total += item.calorias
        }
        
        return total
    }
}

class Item {
    let nome:String
    let calorias:Double
    
    init(nome:String, calorias:Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
