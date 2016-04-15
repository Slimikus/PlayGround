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











