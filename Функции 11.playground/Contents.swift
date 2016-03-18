// Функции

func printMessage1() -> Void {
    print("Сообщение 1 принято")
}
printMessage1()

func printMessage2() -> () {
    print("Сообщение 2 принято")
}
printMessage2()

func printMessage3() {
    print("Сообщение 3 принято")
}
printMessage3()

// Входные параметры и возвращаемое значение

func printCodeMessage(requestCode: Int) -> () {
    print("Код ответа - \(requestCode)")
}
printCodeMessage(200)
printCodeMessage(404)

func sum1(a: Int, b: Int, c: Int) -> () {
    print("Сумма 1 \(a+b+c)")
}
sum1(10, b: 51, c: 92)

func sum2(a: Int, _ b: Int, c: Int) -> () {
    print("Сумма 2 \(a+b+c)")
}
sum2(15, 12, c: 9)

func generateString1(code: Int, var _ text: String) -> String {
    text += String(code)
    return text
}
generateString1(200, "Код: ")

// Cквозные параметры

func changeValues(inout a: Int, inout _ b: Int) -> () {
    let tmp = a
    a = b
    b = tmp
}
var a = 150, b = 45
changeValues(&a, &b)
a
b

// Функция в качестве значения аргумента

func generateString2(code: Int, message: String) -> String {
    let returnMessage = "Получено соощение ''\(message)'' с кодом \(code)"
    return returnMessage
}
print(generateString2(200, message: "Сервер не доступен"))















