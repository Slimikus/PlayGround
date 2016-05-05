//: 27 - Универсальные шаблоны

// 27.1 Универсальные функции

func swapTwoInts(inout a: Int, inout _ b: Int) {
    let tempA = a
    a = b
    b = tempA
}
var firstInt = 4010
var secontInt = 13
swapTwoInts(&firstInt, &secontInt)
secontInt

func swapTwoValue<T>(inout a: T, inout _ b: T) {
    let tempA = a
    a = b
    b = tempA
}
var firstString = "one"
var secondString = "two"
swapTwoValue(&firstString, &secondString)
secondString
swapTwoValue(&firstInt, &secontInt)
secontInt
