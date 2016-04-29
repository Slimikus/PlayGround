//: 24 - Расширения

// 24.1 Вычисляемые свойства в расширениях

extension Double {
    var km: Double { return self * 1000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("Один дюйм - это \(oneInch) метра")
let threeFeet = 3.ft
print("Три фута - это \(threeFeet) метра")

// 24.2 Инициализаторы в расширениях

import UIKit
// сущность "линия"
struct Line {
    var pointOne: (Double, Double)
    var pointTwo: (Double, Double)
}
// расширения для Double
extension Double {
    init (line: Line){
        self = sqrt(pow((line.pointTwo.0 - line.pointOne.0), 2) + pow((line.pointTwo.1 - line.pointOne.1), 2))
    }
}
var myLine = Line(pointOne: (10,10), pointTwo: (14,10))
var lineLength = Double(line: myLine)

// 24.3 Методы в расширениях

extension Int {
    func repetitions(task: () -> ()) {
        for _ in 0..<self {
            task()
        }
    }
}
3.repetitions({print("Swift")})

extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()

