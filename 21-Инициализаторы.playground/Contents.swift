//: 21 Инициализаторы и деинициализаторы

// 21.1 Инициализаторы

class Quadruped {
    var type = ""
    var name = ""
    func walk(){
        print("walk")
    }
}
class Dog: Quadruped {
    override init() {
        super.init()
        self.type = "dog"
    }
    convenience init(text: String) {
        self.init()
        print(text)
    }
    func bark(){
        print("woof")
    }
    func printName(){
        print(self.name)
    }
}
var myDog = Dog(text: "Экземпляр класса Dog создан")

class Rectangle{
    var height: Int
    var weight: Int
    init? (height h: Int, weight w: Int){
        self.height = h
        self.weight = w
        if !(h > 0 && w > 0) {
            return nil
        }
    }
}
var rectangle = Rectangle(height: 56, weight: -32)

enum TemperatureUnit {
    case Kelvin, Celsius, Fahrenheit
    init? (symbol: Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default:
            return nil
        }
    }
}
let fahrenheitUnit = TemperatureUnit(symbol: "F")

enum TemperatureUnit2: Character {
    case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
}
let fahrenheitUnit2 = TemperatureUnit2(rawValue: "F")
fahrenheitUnit2!.hashValue

// 21.2 Деинициализаторы

class SuperClass {
    init? (isNil: Bool) {
        if isNil == true {
            return nil
        } else {
            print("Экземпляр создан")
        }
    }
    deinit {
        print("Деинициализатор суперкласса")
    }
}
class SubClass: SuperClass {
    deinit {
        print("Деинициализатор подкласса")
    }
}
var obj = SubClass(isNil: false)
obj = nil


