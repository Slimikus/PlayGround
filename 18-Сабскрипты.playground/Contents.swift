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
    var color: ChessmanColor
    var coordinates: (String, Int)? = nil
    var figureSymbol: Character
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
        print("Координаты удалены")
        self.color
//        self.figureSymbol = ""
    }
}
var QueenBlack = Chessman(type: .Queen, color: .Black, figure: "♛", coordinates: ("A", 6))
var QueenWhite = Chessman(type: .Queen, color: .White, figure: "♕", coordinates: ("E", 1))

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
            if self.desk[number]![alpha]!.coordinates! == newValue!.coordinates! {
                print("Nil")
                print(game[alpha, number]!.coordinates!)
                
            }
        }
    }
    func setChessman(chess: Chessman, coordinates: (String, Int)) {
        if let oldCoordinates = chess.coordinates {
            desk[oldCoordinates.1]![oldCoordinates.0] = nil
        }
        self.desk[coordinates.1]![coordinates.0] = chess
        chess.setCoordinates(char: coordinates.0, num: coordinates.1)
    }
    func printDesk() -> String{
        var prin = ""
        let alphaArr = ["A", "B", "C", "D", "E", "F", "G", "H"]
        let numberArr = [1, 2, 3, 4, 5, 6, 7, 8]
        alphaArr
        for x in numberArr {
            for y in alphaArr {
                if game[y, x] != nil {
                    prin = prin + String(game[y, x]!.figureSymbol) + " "
                } else {
                    prin = prin + "- "
                }
            }
            print(prin)
            prin = ""
        }
      
    return prin
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

// Задание 1. Непонятно, тут всё работает. UPD теперь понятно, вроде...

QueenBlack.coordinates
game["C", 5]?.kill()
game["C", 5]?.coordinates
game["C", 6]?.coordinates
game["C", 5]?.figureSymbol
game["C", 6]?.figureSymbol
game["C", 5]?.color
game["C", 6]?.color
game["C", 5]?.type
game["C", 6]?.type
QueenBlack.coordinates

// Задание 2.

game["E", 8] = QueenBlack
game["E", 1] = QueenWhite

QueenBlack.coordinates
QueenBlack.figureSymbol

QueenWhite.coordinates
QueenWhite.figureSymbol

game.printDesk()











