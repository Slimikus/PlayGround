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







