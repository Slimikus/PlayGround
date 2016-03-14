var dict1 = ["one":"один", "two":"два", "three":"три"]

var countryDict = ["RUS":"Россия", "BEL":"Беларусь", "UKR":"Украина"]
countryDict["BEL"]
countryDict["RUS"] = "Российская Федерация"
countryDict
countryDict["TUR"] = "Турция"
countryDict
countryDict["TUR"] = nil
countryDict.removeValueForKey("UKR")
countryDict
let myCountry: String = countryDict["BEL"]!

var emptyDic: [String:Int] = [:]
var anotherEmptyDic: Dictionary<String,Int> = [:]

countryDict.count
emptyDic.count
emptyDic.isEmpty
countryDict.keys
countryDict.values

typealias Chessman = [String:(alpha:Character,num:Int)?]
var Chessmans: Chessman = ["Белый король":("B",3), "Чёрный ферзь":("E", 6), "Белая ладья":nil]

var In = Chessmans["Белый король"]!
if In != nil {
    print("Координаты фигуры 'Белый король': \(Chessmans["Белый король"]!!)")
} else {
    print("Ваша фигура сбита")
}
In = Chessmans["Чёрный ферзь"]!
if In != nil {
    print("Координаты фигуры 'Чёрный ферзь': \(Chessmans["Чёрный ферзь"]!!)")
} else {
    print("Ваша фигура сбита")
}
In = Chessmans["Белая ладья"]!
if In != nil {
    print("Координаты фигуры 'Белая ладья': \(Chessmans["Белая ладья"]!!)")
} else {
    print("Ваша фигура сбита")
}



