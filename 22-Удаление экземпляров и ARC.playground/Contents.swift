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




