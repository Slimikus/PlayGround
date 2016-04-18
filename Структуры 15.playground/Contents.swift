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







