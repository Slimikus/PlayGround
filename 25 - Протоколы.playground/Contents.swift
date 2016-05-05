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

// 25.3 Требуемые инициализаторы

protocol Named {
    init(name: String)
}
class Person2: Named {
    var name: String
    required init(name: String) {
        self.name = name
    }
}

// 25.5 Расширение и протоколы

// Добавление соответствия типа протоколу

protocol TextRepresentable {
    func asText() -> String
}
extension Int: TextRepresentable {
    func asText() -> String {
        return String(self)
    }
}
5.asText()

// Расширение протоколов

extension TextRepresentable {
    func description() -> String {
        return "Данный тип поддерживает протокол TextRepresentable"
    }
}
5.description()

// 25.6 Наследование протоколов

protocol SuperProtocol {
    var someValue: Int { get }
}
protocol SubProtocol: SuperProtocol {
    func someMethod ()
}
struct SomeStruct: SubProtocol {
    let someValue: Int = 10
    func someMethod() {
        // Тело метода
    }
}

// 25.7 Классовые протоколы

protocol SubProtocol2: class, SuperProtocol {
    func someMethod()
}

// 25.8 Композиция протоколов

protocol Named8 {
    var name: String { get }
}
protocol Aged8 {
    var age: Int { get }
}
struct Person8: Named8, Aged8 {
    var name: String
    var age: Int
}
func wishHappyBirthday(celebrator: protocol<Named8, Aged8>) {
    print("С Днём Рождения, \(celebrator.name)! Тебе уже \(celebrator.age)!")
}
let birthdayPerson = Person8(name: "Джон Уик", age: 46)
wishHappyBirthday(birthdayPerson)


