//: 25 - Протоколы

// 25.1 Требуемые свойства

protocol SomeProtocol {
    var mustBeSettable: Int {get set}
    var doesNotNeedToBeSettable: Int {get}
}

protocol AnotherProtocol {
    static var someTypeProperty: Int {get set}
}

protocol FullyNamed {
    var fullName: String {get}
}
struct Person: FullyNamed {
    var fullName: String
}
let John = Person(fullName: "John Wick")

// 25.2 Требуемые методы

protocol RandomNumberGenerator {
    func random() -> Double
    static func getRandomString()
    mutating func changeValue(newValue: Double)
}


