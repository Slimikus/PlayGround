//: Playground - noun: a place where people can play

import UIKit

let L = 4
let H = 5
let T = "S"

var str = ""
var arrIntASCII: [Int] = []
let arrA = [" #  ","# # ", "### ", "# # ", "# # "]
let arrE = ["### ","#   ","##  ","#   ","### "]
let arrH = ["# # ","# # ","### ","# # ","# # "]
let arrM = ["# # ","### ", "### ", "# # ", "# # "]
let arrN = ["### ","# # ","# # ","# # ","# # "]
let arrT = ["### "," #  "," #  "," #  "," #  "]
let dict = [65: arrA, 69: arrE, 72: arrH, 77: arrM, 78: arrN, 84: arrT]

var arrAnswer: [String] = []
var arrAnswer2: [String] = []

for i in T.utf16 {
    str = str + String(i) + " "
    print("i = \(i)")
    arrIntASCII.append(Int(i))
    
}

print("Массив i: \(arrIntASCII)")
print("Длинна массива arrIntASCII = \(arrIntASCII.count)")
print("Массив arrIntASCII: \(arrIntASCII[0])")//, toStream: &errStream)
for i in 0...arrIntASCII.count-1 {
    var temp = dict[arrIntASCII[i]]!
    print(temp)//, toStream: &errStream)
    arrAnswer.append(String(temp))
}






var arrInt1 = [["1", "2", "3"], ["1", "2", "3"], ["1", "2", "3"]]
var arrInt2: [String] = []
print(arrInt1)
for j in 0...arrInt1.count-1 {
    var str = ""
    for i in 0...arrInt1[j].count - 1 {
        str = str + String(arrInt1[i][j])
        
    }
    arrInt2.append(str)
    print(arrInt2)
}
