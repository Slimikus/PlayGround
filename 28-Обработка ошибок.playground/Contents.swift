//: 28 - Обработка ошибок

// 28.1 Выбрасывание ошибок

enum VendingMachineError: ErrorType {
    case InvalidSelection
    case InsufficientFunds(coinsNeeded: Int)
    case OutOfStock
}
throw VendingMachineError.InsufficientFunds(coinsNeeded: 5)


