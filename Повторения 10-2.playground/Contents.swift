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

// Метки

mainLoop: for i in 1...5 {
    for y in 1...5 {
        if y == 4 && i == 2 {
            break mainLoop
        }
        print("\(i) - \(y)")
    }
}

// Задание

print("Задание №1")
var dnev: [String: [String:UInt]] = ["Иванов": ["21.02.16": 4, "13.03.16": 5], "Петров": ["21.02.16": 2, "13.03.16": 4], "Сидоров": ["21.02.16": 5, "13.03.16": 3]]
var sredBal: Double = 0
var sred: Double = 0
for (fam, allOcenki) in dnev {
    for (data, bal) in allOcenki {
        sredBal += Double(bal)
    }
    sredBal = sredBal/Double(allOcenki.count)
    sred += sredBal
    print("Средний бал студента \(fam) равен ", sredBal)
    sredBal = 0
}
sred = sred/Double(dnev.count)

print("Средний бал группы равен \(sred)")

print("Задание №2")

typealias Chessman = [String:(alpha:Character,num:Int)?]
var Chessmans: Chessman = ["Белый король":("B",3), "Чёрный ферзь":("E", 6), "Белая ладья":nil]

for (chass, koor) in Chessmans {
    if koor != nil {
        print("Координаты фигуры \(chass): \(koor!)")
    } else {
        print("Ваша фигура \(chass) сбита")
    }
   
}