// 15 Структуры

// 15.1 Синтаксис объявления структур

struct PlayerInChess0 {}
var oleg0: PlayerInChess0

// 15.2 Свойства в структурах

struct PlayerInChess1 {
    var name: String
    var wins: UInt
}

var oleg1 = PlayerInChess1(name: "Олег", wins: 32)

struct PlayerInchess2 {
    var name = ""
    var wins: UInt = 0
}

var oleg2 = PlayerInchess2(name: "Олег", wins: 33)
var maks = PlayerInchess2()

// 15.3 Структура как пространство имён

struct PlayerInChess3 {
    var name: String
    var wins: UInt = 0
}
var oleg3 = PlayerInChess3(name: "Олег", wins: 0)
oleg3.name
oleg3.wins = 20
oleg3.wins

//15.4 Собственные инициализаторы

struct PlayerInChess4 {
    var name: String
    var wins: UInt = 0
    init (name: String){
        self.name = name
    }
}
var oleg4 = PlayerInChess4(name: "Олег")

// 15.5 Методы в структурах

struct PlayerInChess5 {
    var name: String
    var wins: UInt
    func description() {
        print("Игрок \(self.name) имеет \(self.wins) побед")
    }
}
var oleg5 = PlayerInChess5(name: "Олег", wins: 15)
oleg5.description()

struct PlayerInChess6 {
    var name: String
    var wins: UInt
    // метод, изменяющий свойство wins
    mutating func addWins( countOfWins: UInt){
        self.wins += countOfWins
    }
}
var oleg6 = PlayerInChess6(name: "Олег", wins: 15)
oleg6.wins
oleg6.addWins(3)
oleg6.wins
