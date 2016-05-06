//: 29 - Нетривиальное использование операторов

// 29.1 Операторные функции

struct Vector2D {
    var x = 0.0, y = 0.0
}

func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}
let vector = Vector2D(x: 3.0, y: 1.0)
let anotheVector = Vector2D(x: 2.0, y: 4.0)
let combiVector = vector + anotheVector
combiVector.x
combiVector.y

// Префиксные и постфиксные операторы

prefix func - (vector: Vector2D) -> Vector2D {
    return Vector2D(x: -vector.x, y: -vector.y)
}
let positive = Vector2D(x: 3.0, y: 4.0)
let negative = -positive
negative.x
negative.y

// Составной оператор присваивания

func += (inout left: Vector2D, right: Vector2D) {
    left = left + right
}
var original = Vector2D(x: 1.0, y: 2.0)
let vectorToAdd = Vector2D(x: 3.0, y: 4.0)
original += vectorToAdd
original.x
original.y

// Оператор эквивалентности

func == (left: Vector2D, right: Vector2D) -> Bool {
    return (left.x == right.x) && (left.y == right.y)
}
func != (left: Vector2D, right: Vector2D) -> Bool {
    return !(left == right)
}
let twoThree = Vector2D(x: 2.0, y: 3.0)
let anotherTwothree = Vector2D(x: 2.0, y: 3.0)
if twoThree == anotherTwothree {
    print("Эти векторы эквивалентны.")
}
