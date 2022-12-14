import UIKit

let items = [1, 30, 35.5, 4]

func returnTotalCalories(data: Array<Double>) -> Double {
    var total: Double = 0
    
    for item in data {
        total += item
    }
    
    return total
}

print(returnTotalCalories(data: items))

