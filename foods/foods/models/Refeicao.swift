import UIKit

class Refeicao: NSObject {
    let nome:String
    let felicidade:Int
    let items: Array<Item> = []
    
    init(nome:String, felicidade:Int) {
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
