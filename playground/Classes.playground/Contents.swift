import UIKit

//let food:String = "Past"
//let rate:String = "4"
//
//let food2:String = "Candy"
//let rate2:String = "3"
//
//print(food, rate)
//print(food2, rate2)

print("-----------------")

class Meal {
    var food:String?
    var rate:String?
}

let myFoodObject = Meal()

print(myFoodObject.food)

myFoodObject.food = "Banana"

// (!)symbol is caleed "forced unwrap optional value"
print(myFoodObject.food!)

