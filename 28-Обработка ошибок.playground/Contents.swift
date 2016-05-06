//: 28 - Обработка ошибок

// 28.1 Выбрасывание ошибок

enum VendingMachineError: ErrorType {
    case InvalidSelection
    case InsufficientFunds(coinsNeeded: Int)
    case OutOfStock
}
throw VendingMachineError.InsufficientFunds(coinsNeeded: 5)

// 28.2 Обработка ошибок

// Передача ошибки

struct Item {
    var price: Int
    var count: Int
}
class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposites = 0
    func dispenseSnack(snack: String) {
        print("Dispensing \(snack)")
    }
    func vend(itemNamed name: String) throws {
        guard var item = inventory[name] else {
            throw VendingMachineError.InvalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.OutOfStock
        }
        guard item.price <= coinsDeposites else {
            throw VendingMachineError.InsufficientFunds(coinsNeeded: item.price - coinsDeposites)
        }
        coinsDeposites -= item.price
        item.count -= 1
        inventory[name] = item
        dispenseSnack(name)
    }
}
let favoriteSnacks = [
    "Alise": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels"
]
func buyfavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

// Оператор do-catch

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposites = 8
do {
    try buyfavoriteSnack("Alise", vendingMachine: vendingMachine)
} catch VendingMachineError.InvalidSelection {
    print("Неправильный выбоор.")
} catch VendingMachineError.OutOfStock {
    print("Этого нет в наличии.")
} catch VendingMachineError.InsufficientFunds(let coinsNeeded) {
    print("Недостаточно средств. Пожалуйста, внесите ещё \(coinsNeeded) монет(ы).")
}

print("DDD")

// Преобразование

func someThrowingFunc() throws -> Int? {
    // ...
    return nil
}
let x = try? someThrowingFunc()

// Запрет на передачу ошибки

//  let photo = try! loadImage("./Resources/John Appleseed.jpg")

