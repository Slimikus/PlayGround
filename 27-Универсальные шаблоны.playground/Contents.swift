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

// 27.3 Ограничение типа

func findIndex<T: Equatable>(array: [T], valueToFind: T) -> Int? {
    for (index, value) in array.enumerate() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}
var myArray = [3.12159, 0.1, 0.25]
let firstIndex = findIndex(myArray, valueToFind: 0.1)
let secondIndex = findIndex(myArray, valueToFind: 31)

// 27.4 Расширение универсального типа

extension Stack {
    var topItem: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}
let topItems = Stack(1, 3, 5, 7, 9)
topItems.topItem

// 27.5 Связанные типы

protocol Container {
    associatedtype ItemTupe
    mutating func append(item: ItemTupe)
    var count: Int {get }
    subscript(i: Int) -> ItemTupe { get }
}

struct Stack2<T>: Container {
    typealias ItemType = T
    var items = [T]()
    var count: Int {
        return items.count
    }
    init(){}
    init(_ elements: T...){
        self.items = elements
    }
    subscript(i: Int) -> T {
        return items[i]
    }
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    mutating func append(item: T) {
        items.append(item)
    }
}
