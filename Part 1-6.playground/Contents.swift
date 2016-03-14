var dragonAge: Int? = 230
var dragon = dragonAge
dragon = dragon! + 10
dragon

var trollAge: Int! = 96
trollAge = trollAge + 10
trollAge

var monstersCount: Int? = 9
var monsters = 0
if var monsters = monstersCount {
    print("Всего \(monsters) монстров")
} else {
    print("Тролли отсутствуют")
}
monsters

var coinsInNewChest = "140"
var allCoinsCount = 1301
var coins = Int(coinsInNewChest)
if coins != nil {
    allCoinsCount += coins!
    print("Всего золота \(allCoinsCount)")
} else {
    print("У нового дракона нет золота")
}

//if Int(coinsInNewChest) != nil {
//    allCoinsCount += Int(coinsInNewChest)!
//} else {
//    print("У нового дракона нет золота")
//}

typealias Text = String
let a: Text = "420"
let b: Text = "350"
let c: Text = "484ddf"
if var aa = Int(a){
    print("A = \(aa)")
}
if var bb = Int(b){
    print("B = \(bb)")
}
if var cc = Int(c){
    print("C = \(cc)")
}

typealias TupleType = (numberOne: Text?, numberTwo: Text?)?
var a2: TupleType = ("190", "67")
var b2: TupleType = ("100", nil)
var c2: TupleType = ("-65", "70")

var aa2: (numberOne: Int, numberTwo: Int)
var bb2: (numberOne: Int, numberTwo: Int)
var cc2: (numberOne: Int, numberTwo: Int)

if a2!.numberOne != nil && a2!.numberTwo != nil {
    aa2.numberOne = Int(a2!.numberOne!)!
    aa2.numberTwo = Int(a2!.numberTwo!)!
    print("Кортеж а2 \(aa2)")
} else {
    print("Одно из чисел кортежа а2 nil")
}

if b2!.numberOne != nil && b2!.numberTwo != nil {
    bb2.numberOne = Int(b2!.numberOne!)!
    bb2.numberTwo = Int(b2!.numberTwo!)!
    print("Кортеж b2 \(bb2)")
    } else {
    print("Одно из чисел кортежа b2 nil")
}

if c2!.numberOne != nil && c2!.numberTwo != nil {
    cc2.numberOne = Int(c2!.numberOne!)!
    cc2.numberTwo = Int(c2!.numberTwo!)!
    print("Кортеж c2 \(cc2)")
} else {
    print("Одно из чисел кортежа c2 nil")
}









