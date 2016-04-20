// 18. Сабскрипты

class Chessman {
    enum ChessmanType {
        case King
        case Castle
        case Bishop
        case Pawn
        case Knight
        case Queen
    }
    enum ChessmanColor {
        case Black
        case White
    }
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
var QueenBlack = Chessman(type: .Queen, color: .Black, figure: "♛", coordinates: ("A", 6))

class gameDesk {
    var desk: [Int:[String: Chessman]] = [:]
    init() {
        for i in 1...8 {
            desk[i] = [:]
        }
    }
    subscript(alpha: String, number: Int) -> Chessman? {
        get {
            if let chessman = self.desk[number]![alpha] {
                return chessman
            }
            return nil
        }
        set {
            self.setChessman(newValue!, coordinates: (alpha, number))
        }
    }
    func setChessman(chess: Chessman, coordinates: (String, Int)) {
        if let oldCoordinates = chess.coordinates {
            desk[oldCoordinates.1]![oldCoordinates.0] = nil
        }
        self.desk[coordinates.1]![coordinates.0] = chess
        chess.setCoordinates(char: coordinates.0, num: coordinates.1)
    }
}
var game = gameDesk()
game.setChessman(QueenBlack, coordinates: ("B", 2))
game.setChessman(QueenBlack, coordinates: ("A", 3))
game["A", 3]?.coordinates
game["B", 2]?.coordinates
game["A", 3]?.figureSymbol
QueenBlack.coordinates
game["C", 5] = QueenBlack
QueenBlack.coordinates




