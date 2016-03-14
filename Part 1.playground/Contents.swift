// Кортежи
// Объявляем кортеж
let myProgramStatus = (200, "In Work", true)
print(myProgramStatus)
// записываем значение кортежа в переменные
var (statusCode, statusText, statusConnect) = myProgramStatus
// Выводим информацию
print("Код ответа-\(statusCode)")
print("Текст ответа-\(statusText)")
print("Связь с сервером-\(statusConnect)")

var (myName, myAge) = ("Троль", 140)
print("Меня зовут \(myName) и мне \(myAge) лет")

let myProgramStatus2: (Int, String, Bool) = (404, "Error", true)
// получаем только необходимые значения котрежа
var (statusCode2, _, _) = myProgramStatus2
print("Код ответа-\(statusCode2)")

print("Код ответа-\(myProgramStatus.0)")
print("Текст ответа-\(myProgramStatus.1)")
print("Связь с сервером-\(myProgramStatus.2)")

let myProgramStatus3 = (statusCode: 300, statusText: "В работе", statusConnect: true)
print("Код ответа-\(myProgramStatus3.statusCode)")
print("Текст ответа-\(myProgramStatus3.statusText)")
print("Связь с сервером-\(myProgramStatus.2)")

// Задание
var myFavoritLove = (Film: "Бойцовский клуб", Chislo: 21, Bludo: "Драники с мясом")
let a = myFavoritLove.Film, b = myFavoritLove.Chislo, c = myFavoritLove.Bludo
var myfavoritLove2 = myFavoritLove
myfavoritLove2 = ("Матрица", 7, "Борщ")
var bufer = myFavoritLove
myFavoritLove = myfavoritLove2
myfavoritLove2 = bufer
var myLoveChisla: (Int, Int, Int)
myLoveChisla.0 = myFavoritLove.Chislo
myLoveChisla.1 = myfavoritLove2.Chislo
var (_, chislo1, _) = myFavoritLove
var (_, chislo2, _) = myfavoritLove2
myLoveChisla.2 = chislo2 - chislo1

	






