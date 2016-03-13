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

// for - in

var totalSum = 0
for i in 1...10 {
    totalSum += i
}
totalSum

var totalNum = 0
var i = 0
for var i in 1...10 {
    totalNum += i
}
totalNum
i


// перебор коллекций

var myMusicStyles = ["Rock", "Jazz", "Pop"]
for musicName in myMusicStyles {
    print("Я люблю \(musicName)")
}





