import UIKit

// adding values separately

let caloria1 = 50.0
let caloria2 = 12
let caloria3 = 111
let caloria4 = 222

// creating my first array of numbers (integers)
let calorias = [111,222,333,444,555]

// print array completely
print(calorias)

// print array with for
for i in 0...3 {
    print("\(i) - \(calorias[i])")
}

print("----------------------------")

// print array with for dinamicaly
for i in 0...calorias.count-1 {
    print("\(i) - \(calorias[i])")
}

print("------------- The best way to do it if you dont't need of index value ---------------")

for caloria in calorias {
    print(caloria)
}
