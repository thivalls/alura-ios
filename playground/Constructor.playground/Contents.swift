import UIKit

class Person {
    let name: String
    let age: Int
    
    init(name:String, age:Int){
        self.name = name
        self.age = age
    }
}

let person = Person(name: "Thiago Valls", age: 35)

print("O nome é \(person.name) e sua idade é: \(person.age)")

print("--------------------------------------------------------")

class Refeicao {
    let nome:String
    let felicidade:String
    var items: Array<Item> = []
    
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

let refeicao = Refeicao(nome: "almoço de domingo", felicidade: "10")

let item1 = Item(nome: "Arroz", calorias: 100.0)
let item2 = Item(nome: "Feijão", calorias: 200.0)
let item3 = Item(nome: "Frango", calorias: 400.0)

refeicao.items.append(item1)
refeicao.items.append(item2)
refeicao.items.append(item3)

print("A refeição '" + refeicao.nome + "' tem nota \(refeicao.felicidade) e \(refeicao.getTotalCalorias()) calorias totais")

