// Функции

func printMessage1() -> Void {
    print("Сообщение 1 принято")
}
printMessage1()

func printMessage2() -> () {
    print("Сообщение 2 принято")
}
printMessage2()

func printMessage3() {
    print("Сообщение 3 принято")
}
printMessage3()

// Входные параметры и возвращаемое значение

func printCodeMessage(requestCode: Int) -> () {
    print("Код ответа - \(requestCode)")
}
printCodeMessage(200)
printCodeMessage(404)

func sum1(a: Int, b: Int, c: Int) -> () {
    print("Сумма 1 \(a+b+c)")
}
sum1(10, b: 51, c: 92)

func sum2(a: Int, _ b: Int, c: Int) -> () {
    print("Сумма 2 \(a+b+c)")
}
sum2(15, 12, c: 9)

func generateString1(code: Int, var _ text: String) -> String {
    text += String(code)
    return text
}
generateString1(200, "Код: ")

// Cквозные параметры

func changeValues(inout a: Int, inout _ b: Int) -> () {
    let tmp = a
    a = b
    b = tmp
}
var a = 150, b = 45
changeValues(&a, &b)
a
b

// Функция в качестве значения аргумента

func generateString2(code: Int, message: String) -> String {
    let returnMessage = "Получено соощение ''\(message)'' с кодом \(code)"
    return returnMessage
}
print(generateString2(200, message: "Сервер не доступен"))

// Входной параметр с переменным числом агрументов

func printRequestString(codes: Int...) -> () {
    var codesString = ""
    for oneCode in codes {
        codesString += String(oneCode) + " "
    }
    print("Получены ответы - \(codesString)")
}
printRequestString(600, 800, 301)
printRequestString(101, 200)

// Кортеж в качестве возвращаемого значения

func getCodeDescription(code: Int) -> (code: Int, description: String) {
    let descriptoin: String
    switch code {
    case 1...100:
        descriptoin = "Error"
    case 101...200:
        descriptoin = "Correct"
    default:
        descriptoin = "Unknown"
    }
    return (code, descriptoin)
}
print(getCodeDescription(150))

let request = getCodeDescription(48)
request.description
request.code

// Реальный пример

func sumWallet(wallet: [Int]? = nil) -> Int? {
    var sum = 0
    if wallet == nil {
        return nil
    }
    for oneBanknote in wallet! {
        sum += oneBanknote
    }
    return sum
}
// кошелёк с купюрами
var wallet = [50, 100, 100, 500, 50, 1000, 5000, 50, 100]
// подсчётвсех купюр
sumWallet(wallet)
// добавление ещё одной купюры
wallet.append(1000)
sumWallet(wallet)
sumWallet()

// Внешние имена аргументов

func sumWallet2(banknotsArray wallet: [Int]? = nil) -> Int? {
    var sum = 0
    if wallet == nil {
        return nil
    }
    for oneBanknote in wallet! {
        sum += oneBanknote
    }
    return sum
}
sumWallet2(banknotsArray: [50, 100, 100, 500, 50, 1000, 5000, 50, 100])

// Функция в качестве аргумента

import Foundation
// функция генерации случайного массива банкнот
func generateWallet(walletLenght: Int) -> [Int] {
    // существующие типы банкнот
    let typesOfBanknotes = [100, 500, 1000, 5000, 10_000, 20_000, 50_000, 100_000, 200_000]
    // массив банкнот
    var wallet: [Int] = []
    // цикл генерации массива случайных банкнот
    for _ in 1...walletLenght {
        let randomIndex = Int( arc4random_uniform(UInt32( typesOfBanknotes.count-1 )) )
        wallet.append( typesOfBanknotes[randomIndex] )
    }
    return wallet
}
// функция подсчёта денег в кошельке
func sumWallet3(banknotsFunction wallet: (Int)->([Int])) -> Int? {
    // вызов переданной функции
    let myWalletArray = wallet( Int(arc4random_uniform(10)))
    var sum: Int = 0
    for oneBanknote in myWalletArray {
        sum += oneBanknote
    }
    return sum
}
// передача функции в функцию
sumWallet3(banknotsFunction: generateWallet)

// Функция в качестве возвращаемого значения

//функция вывода текста
func printText() -> (String) {
    return "Очень хорошая книга"
}
//функция, которая возвращает функцию
func returnPrintTextFunction() -> () -> (String) {
    return printText
}
let newFunctionInLet = returnPrintTextFunction()
newFunctionInLet()

// 11.3 Тело функции как значение

//безымянная функция в качестве значения
let functionInLet = { return true }
functionInLet()

// 11.4 Вложенные функции

func oneStep(var coordinates: (Int, Int), stepType: String) -> (Int, Int) {
    func up(inout coords: (Int, Int)) -> (Int, Int) {
        return (coords.0+1, coords.1)
    }
    func right(inout coords: (Int, Int)) -> (Int, Int) {
        return (coords.0, coords.1+1)
    }
    func down(inout coords: (Int, Int)) -> (Int, Int) {
        return (coords.0-1, coords.1)
    }
    func left(inout coords: (Int, Int)) -> (Int, Int) {
        return (coords.0, coords.1-1)
    }
    switch stepType {
        case "up":
        return up(&coordinates)
        case "right":
        return right(&coordinates)
        case "down":
        return down(&coordinates)
        case "left":
        return left(&coordinates)
    default:
        return (0, 0)
    }
}
var coordinates = (10, -5)
coordinates = oneStep(coordinates, stepType: "up")
oneStep(coordinates, stepType: "right")

// 11.5 Перезагрузка функций

func say(what: String) {}
func say(what: Int) {}

func cry() -> String {
    return "one"
}
func cry() -> Int {
    return 1
}

let resultString: String = cry()
let resultInt = cry() + 100













