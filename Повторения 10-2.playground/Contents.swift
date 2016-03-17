// Оператор While

var i = 1
var resultSum = 0
while i <= 10 {
    resultSum += 1
    i++
}
resultSum

// Оператор Repear while

i = 1
resultSum = 0
repeat {
    resultSum += 1
    i++
} while i <= 10
resultSum

// Оператор Continue

for i in 1...10 {
    if i%2 == 0 {
        continue
    } else {
        print(i)
    }
}

// Оператор Break

import Foundation
for i in 1...20 {
    var randNum = Int(arc4random_uniform(10))
    if randNum == 5 {
        print("Итерация №\(i)")
        break
    }
}







