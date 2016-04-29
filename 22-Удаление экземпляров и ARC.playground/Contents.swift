//: 22 - Удаление экземпляров и ARC

// 22.1 Уничтожение экземпляров

//Область видимости
class myClass{
    var description: String
    init(description: String){
        print("Экземпляр \(description) создан")
        self.description = description
    }
    deinit{
        print("Экземпляр \(description) уничтожен")
    }
}
var myVar11 = myClass(description: "Один")
if true {
    var myVar12 = myClass(description: "Два")
}

//Количество ссылок на экземпляр
class myClass2{
    var description: String
    init(description: String){
        print("Экземпляр \(description) создан")
        self.description = description
    }
    deinit{
        print("Экземпляр \(description) уничтожен")
    }
}
var myVar21 = myClass2(description: "Один")
var myVar22 = myVar21
myVar21 = myClass2(description: "Два")
myVar22 = myVar21

// 22.2 Утечка памяти

//Пример утечки памяти

class Human {
    let name: String
    var child = [Human?]()
    var father: Human?
    var mother: Human?
    init(name: String){
        self.name = name
    }
    deinit{
        print(self.name+" удалён")
    }
}
if 1==1 {
    var Kirill = Human(name: "Кирилл")
    var Olga = Human(name: "Ольга")
    var Aleks = Human(name: "Алексей")
    Kirill.father = Aleks
    Kirill.mother = Olga
    Aleks.child.append(Kirill)
    Olga.child.append(Kirill)
}

//Сильные и слабые ссылки
class Human2 {
    let name: String
    var child = [Human2?]()
    weak var father: Human2?
    weak var mother: Human2?
    init(name: String){
        self.name = name
    }
    deinit{
        print(self.name+" - удалён")
    }
}
if 1==1 {
    var Kirill = Human2(name: "Кирилл")
    var Olga = Human2(name: "Ольга")
    var Aleks = Human2(name: "Алексей")
    Kirill.father = Aleks
    Kirill.mother = Olga
    Aleks.child.append(Kirill)
    Olga.child.append(Kirill)
}




