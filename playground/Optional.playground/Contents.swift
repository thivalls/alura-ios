import UIKit

class Meal {
    var food:String?
    var rate:String?
}

let myFoodObject = Meal()
myFoodObject.food = "Banana with chocolate"

// {{{DANGEROUS}}} (!)symbol is caleed "forced unwrap for optional value"
// print(myFoodObject.food!)

// if let
if let food = myFoodObject.food {
    print(food)
}


// guard let
func myGuard() {
    guard let myfood = myFoodObject.food else {
        print("the myFoodObject is nil")
        return
    }

    print(myfood)
}

myGuard()




