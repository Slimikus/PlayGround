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

