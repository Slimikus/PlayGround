// 16 Классы

// 16.1 Синтаксис классов

class ИмяКласса{
    // свойства и методы класса
}

// 16.2 Свойства классов
// типы фигур
enum ChessmanType {
    case King
    case Castle
    case Bishop
    case Pawn
    case Knight
    case Queen
}
// цвета фигур
enum ChessmanColor {
    case Black
    case White
}

class Chessman {
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    init(type: ChessmanType, color: ChessmanColor, figure: Character){
        self.type = type
        self.color = color
        self.figureSymbol = figure
    }
}
var kingWhite = Chessman(type: .King, color: .White, figure: "♔")

// 16.3 Методы классов

class Chessman3 {
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    init(type: ChessmanType, color: ChessmanColor, figure: Character){
        self.type = type
        self.color = color
        self.figureSymbol = figure
    }
    // метод установки координат
    func setCoordinates(char c: String, num n: Int) {
        self.coordinates = (c, n)
    }
    // метод, убивающий фигуру
    func  kill() {
        self.coordinates = nil
    }
}
var kingWhite2 = Chessman3(type: .King, color: .White, figure: "♔")
kingWhite2.setCoordinates(char: "E", num: 1)

// 16.4 Инициализаторы классов

class Chessman4 {
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    init(type: ChessmanType, color: ChessmanColor, figure: Character){
        self.type = type
        self.color = color
        self.figureSymbol = figure
    }
    init(type: ChessmanType, color: ChessmanColor, figure: Character, coordinates: (String, Int)){
        self.type = type
        self.color = color
        self.figureSymbol = figure
        self.coordinates = (char: coordinates.0, num: coordinates.1)
    }
    func setCoordinates(char c: String, num n: Int) {
        self.coordinates = (c, n)
    }
    func  kill() {
        self.coordinates = nil
    }
}
var QueenBlack = Chessman4(type: .Queen, color: .Black, figure: "♛", coordinates: ("A", 6))







