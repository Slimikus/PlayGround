// Задание 1
//: Объявление переменых
var a: Int8
var b: UInt8

//: Присвоение значения
b = UInt8.max
a = Int8.min

//: *Вывод в консоль*
print("Минимальное значение для Int8: \(a)")
print("Максимальное значение для UInt8: \(b)")

//: Целые числа
var c = 2
var d: Int = 3
var x: Int
print("c = \(c), d = \(d)")
x = c
c = d
d = x
print("c = \(c), d = \(d)")

//: Дробные числа
let a1: Float = 324.34
let b1: Float
var c1: Double
print("a1 = \(a1)")
b1 = 384.234
c1 = 2354.2343
print("a1 = \(a1), b1 = \(c1), c1 = \(c1)")

var rez11 = a1 + Float(c1)
var rez12 = c1 + Double(a1)
c

// Задание 2
let a2: Int, b2: Float, c2: Double
a2 = 18; b2 = 16.4; c2 = 5.7
var rez2 = Float(a2) + b2 + Float(c2)
var proiz = a2 * Int(b2) * Int(c2)
var del = Double(b2) % c2
print("Сумма a2, b2, c2 = \(rez2), произведение a2, b2, c2 = \(proiz), остаток от деления b2 на c2 = \(del)")

// Задание 3
let prob = " "
var stroka = "Привет, как дела?"
let a3 = "d"
var b3 = 245
var c3 = 53
let d3 = stroka + prob + a3 + prob + String(b3 + c3)
print(d3)

// Задание 4
var a4 = true
var b4 = false
let c4 = a4 && b4
let d4 = a4 || b4
print("c4 = \(c4), d4 = \(d4)")

// Задание 5
let name = "Andrey"
var ves: Double = 91
var rost: Int = 176
var imt = ves / Double((rost * rost) * 100)
print("Мой индекс массы тела (ИМТ) равен \(imt)")





