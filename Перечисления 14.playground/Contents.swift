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
let ruobleCurrency = CurrencyUnit1.Rouble
//способ 2
let dollarCurrency: CurrencyUnit2
dollarCurrency = .Dollar

// 14.2 Ассоциированные параметры


