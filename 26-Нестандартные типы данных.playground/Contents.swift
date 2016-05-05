//: 26-Нестандартные типы данных и получение справочной информации

var str: String

var countryDict = ["RUS":"Российская Федерация", "BEL":"Беларусь", "UKR":"Украина"]
var keysOfDict = countryDict.keys
var valuesOfDict = countryDict.values

var keys = Set(countryDict.keys)
var values = Array(countryDict.values)

var someArray = [1, 3, 5, 7, 9]
var reversSomeArray = someArray.reverse()

let resArray: Array<Int> = someArray.reverse()
