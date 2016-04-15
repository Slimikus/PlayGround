// 14.1 Перечисления

enum CurrencyUnit1 {
    case Rouble
    case Dollar
    case Euro
}

enum CurrencyUnit2 {
    case Rouble, Dollar, Euro
}

//способ 1
let ruobleCurrency1 = CurrencyUnit1.Rouble
//способ 2
let dollarCurrency1: CurrencyUnit2
dollarCurrency1 = .Dollar

// 14.2 Ассоциированные параметры

enum CurrencyUnit3 {
    case Rouble(countrys: [String], shortName: String)
    case Dollar(countrys: [String], shortName: String)
    case Euro(countrys: [String], shotName: String)
}

var roubleCurrency2: CurrencyUnit3
roubleCurrency2 = .Rouble(countrys: ["Russia"], shortName: "RUB")
roubleCurrency2

//Вариант 1
//страны использующие доллар
enum DollarCountrys {
    case USA
    case Canada
    case Australia
}
//тип данных "валюта"
enum CurrencyUnit4 {
    case Rouble(countrys: [String], shortName: String)
    case Dollar(countrys: [String], shortName: String, national: DollarCountrys)
    case Euro(countrys: [String], shotName: String)
}
var dollarCurrency2: CurrencyUnit4
dollarCurrency2 = .Dollar(countrys: ["USA"], shortName: "USD", national: .USA)

//Вариант 2
//тип данных "валюта"
enum CurrencyUnit5 {
    //страны использующие доллар
    enum DollarCountrys {
        case USA
        case Canada
        case Australia
    }
    case Rouble(countrys: [String], shortName: String)
    case Dollar(countrys: [String], shortName: String, national: DollarCountrys)
    case Euro(countrys: [String], shotName: String)
}

var someVar: CurrencyUnit5.DollarCountrys
someVar = .Australia

// 14.3 Оператор SWITCH для перечислений
// создание переменной
var someCurrency = CurrencyUnit5.Rouble(countrys: ["Russia", "Ukrain", "Belarus"], shortName: "RUB")
// анализ переменной
switch someCurrency {
case .Rouble (let countrys, let shotname):
    print("Рубль. Страны: \(countrys), краткое наименование \(shotname)")
case let .Euro (countrys, shotname):
    print("Евро. Страны: \(countrys), краткое наименование \(shotname)")
case .Dollar (let countrys, let shotname, let national):
    print("Доллар \(national). Страны: \(countrys), краткое наименование \(shotname)")
}

// 14.4 Связанные значения членов перечисления

enum Smile: String {
    case Joy = ":)"
    case Laugh = ":D"
    case Sorrow = ":("
    case Suprise = "o_O"
}

enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Pluton = 999
}

var ven: Planet = .Venus
ven.rawValue
var iAmHappy = Smile.Joy
iAmHappy.rawValue

var myPlanet = Planet.init(rawValue: 3)
var anotherPlanet = Planet.init(rawValue: 11)

// 14.5 Свойства в перечислениях

enum Smile2: String {
    case Joy = ":)"
    case Laugh = ":D"
    case Sorrow = ":("
    case Suprise = "o_O"
    var description: String {return self.rawValue}
}
var mySmile: Smile2 = .Sorrow
mySmile.description

// 14.6 Методы в перечислениях
enum Smile3: String {
    case Joy = ":)"
    case Laugh = ":D"
    case Sorrow = ":("
    case Suprise = "o_O"
    // метод для вывода описания
    func description() {
        print("Перечисление содержит список используемых смайликов: их названия и графические обозначения")
    }
}
var mySmile3 = Smile3.Joy
mySmile3.description()

// 14.7 Оператор Self

enum Smile4: String {
    case Joy = ":)"
    case Laugh = ":D"
    case Sorrow = ":("
    case Suprise = "o_O"
    func description() {
        print("Перечисление содержит список используемых смайликов: их названия и графические обозначения")
    }
    func descriptionValue() -> Smile4 {
        return self
    }
    func descriptionRawValue() -> String {
        return self.rawValue
    }
}
var mySmile4 = Smile4.Joy
mySmile4.descriptionValue()
mySmile4.descriptionRawValue()

// 14.8 Рекурсивные перечисления

enum ArithmeticExpression {
    // операция сложения
    case Addition(Int, Int)
    // операция вычитания
    case Substraction(Int, Int)
    // метод подсчёта
    func evauate() -> Int {
        switch self {
        case .Addition(let left, let right):
            return left + right
        case .Substraction(let left, let right):
            return left - right
        }
    }
}
var expr = ArithmeticExpression.Addition(10, 14)
expr.evauate()

enum ArithmeticExpression2 {
    case Number(Int)
    indirect case Addition(ArithmeticExpression2, ArithmeticExpression2)
    indirect case Subtraction(ArithmeticExpression2, ArithmeticExpression2)
    func evaluate(expression: ArithmeticExpression2? = nil) -> Int {
        let expression = (expression == nil ? self: expression)
        switch expression! {
        case .Number(let value):
            return value
        case .Addition(let valueLeft, let valueRight):
            return self.evaluate(valueLeft) + self.evaluate(valueRight)
        case .Subtraction(let valueLeft, let valueRight):
            return self.evaluate(valueLeft) - self.evaluate(valueRight)
        }
    }
}
var exp2 = ArithmeticExpression2.Addition(.Number(20), .Subtraction(.Number(10), .Number(34)))
exp2.evaluate()

// Задание










