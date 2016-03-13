for var i=0; i<5; i++ {
    print("i =  \(i)")
}

for var f = 0 ; f < 5; ++f {
    f++
    print("f = ",f)
}

var myArray = ["RUS", "USA", "BY"]
for var i = 0; i < myArray.count; i++ {
    print(myArray[i])
}

var mySports = ["Football": "Футбол", "Polo": "Поло", "Golf": "Гольф"]
// получаем массив всех ключей
let mySportsArray = Array(mySports.keys)
/* обходим массив ключей
для доступа к значениям словоря */
for var i=0; i < mySportsArray.count; i++ {
    print(mySports[mySportsArray[i]]!)
}


