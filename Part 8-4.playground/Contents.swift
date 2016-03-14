var userMax = 4
if userMax == 1{
    print("Единица на экзамене это ужасно!!!")
} else if userMax == 2{
    print("С двойкой ты останешься на второй год!")
} else if userMax == 3 {
    print("Ты плохо учил материал в этом году!")
} else if userMax == 4{
    print("Неплохо. но могло быть лучше")
} else if userMax == 5{
    print("Бесплатное место у университете тебе обеспечено!")
} else {
    print("Таких оценок не бывает!")
}


switch userMax {
case 1:
    print("Единица на экзамене это ужасно!!!")
case 2:
    print("С двойкой ты останешься на второй год!")
case 3:
    print("Ты плохо учил материал в этом году!")
case 4:
    print("Неплохо. но могло быть лучше")
case 5:
    print("Бесплатное место у университете тебе обеспечено!")
default:
    print("Таких оценок не бывает!")
}

switch userMax {
case 1..<3:
    print("Экзамен не сдан!")
case 3...5:
    print("Экзамен сдан!")
default:
    print("Таких оценок не бывает!")
}

var level: Character = "Б"
switch level{
    case "А":
    print("Выключить все электрические приборы")
    fallthrough
    case "Б":
    print("Закрыть входные двери и окна")
    fallthrough
    case "В":
    print("Соблюдать спокойствие")
default:
    break
}

var dragonWeight: Float = 1
var dragonColor = "зеленый"
switch dragonColor {
case "зеленый" where dragonWeight < 2:
    print("Поместите дракона в загон 1")
case "красный" where dragonWeight < 2:
    print("Поместите дракона в загон 2")
case "зеленый", "красный" where dragonWeight >= 2:
    print("Поместите дракона в загон 3")
default:
    break
}

/* кортеж типа (String, Int)
содержит цвет и вкс дракона */
var dragonCharacteristic = ("зелёный", 1.3)
// поступление загона для поступившего дракона
switch dragonCharacteristic {
case ("зелёный", 0..<2):
    print("Поместите дракона в загон 1")
case ("красный", 0..<2):
    print("Поместите дракона в загон 2")
case ("красный", _), ("зелёный", _) where dragonCharacteristic.1 >= 2:
    print("Поместите дракона в загон 3")
default:
    print("Дракон с неизвестными параметрами")
}

typealias Operation = (operandOne: Float, operandTwo: Float, operation: Character)
let const1: Operation = (3.1, 33, "*")
switch const1 {
case (_, _, "+"):
    print(const1.operandOne + const1.operandTwo)
case (_, _, "-"):
    print(const1.operandOne - const1.operandTwo)
case (_, _, "*"):
    print(const1.operandOne * const1.operandTwo)
case (_, _, "/"):
    print(const1.operandOne / const1.operandTwo)
default:
    print("Введите одно из значений: +, -, *, /")
}






