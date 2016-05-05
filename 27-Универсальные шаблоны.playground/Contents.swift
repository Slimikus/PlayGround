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

// 27.2 Универсальные типы

struct IntStack {
    var items = [Int]()
    mutating func push(item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

struct IntStack2<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}
var stackString = IntStack2<String>()
stackString.push("uno")
stackString.push("dos")
let fromTheTop = stackString.pop()

struct Stack<T> {
    var items = [T]()
    init(){}
    init(_ elements: T...){
        self.items = elements
    }
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}
var stackOfInt3 = Stack(1, 2, 4, 5)
var stackOfString3 = Stack<String>()

