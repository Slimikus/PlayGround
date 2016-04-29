//: 23 - Опциональные цепочки

// 23.1 Доступ к свойства через опциональные цепочки

class Person {
    var residence: Residence?
}
class Residence {
    var numberOfRooms = 1
}
var man = Person()
if let manResidence = man.residence {
    print("Есть дом с \(manResidence.numberOfRooms) комнатами")
} else {
    print("Нет дома")
}

class Person2 {
    var residence2: Residence2?
}
class Residence2 {
    var numberOfRooms2 = 1
    var room2: Room2?
}
class Room2 {
    var square2: Int = 10
}
var man2 = Person2()
var residence2 = Residence2()
var room2 = Room2()
man2.residence2 = residence2
residence2.room2 = room2
if let square = man2.residence2?.room2?.square2 {
    print("Площадь \(square) кв.м.")
} else {
    print("Комнаты отсутствуют")
}

// 23.2 Установка значений через опциональные цепочки

man2.residence2?.room2?.square2 = 36
man2.residence2?.room2?.square2

// 23.3 Доступ к методам через опциональные цепочки
class Person3 {
    var residence3: Residence3?
}
class Residence3 {
    var numberOfRooms3 = 1
    var rooom3: Room3?
    func returnNumberOfRooms3() -> Int {
        return numberOfRooms3
    }
}
class Room3 {
    var square3: Int = 15
}
var man3 = Person3()
var residence3 = Residence3()
man3.residence3 = residence3
man3.residence3?.numberOfRooms3

