//: Playground - noun: a place where people can play

import UIKit

let L = 4
let H = 5
let T = "MANHATTAN"

var str = ""
var arrIntASCII: [Int] = []
let arrA = [" #  ","# # ","### ","# # ","# # "]
let arrE = ["### ","#   ","##  ","#   ","### "]
let arrH = ["# # ","# # ","### ","# # ","# # "]
let arrM = ["# # ","### ","### ","# # ","# # "]
let arrN = ["### ","# # ","# # ","# # ","# # "]
let arrT = ["### "," #  "," #  "," #  "," #  "]
let dict = [65: arrA, 69: arrE, 72: arrH, 77: arrM, 78: arrN, 84: arrT]

var arrAnswer1: [[String]] = []
var arrAnswer2: [String] = []

for i in T.utf16 {
    str = str + String(i) + " "
    //print("i = \(i)")
    arrIntASCII.append(Int(i))
    
}

//print("Массив i: \(arrIntASCII)")
//print("Длинна массива arrIntASCII = \(arrIntASCII.count)")
print("Массив arrIntASCII: \(arrIntASCII)")//, toStream: &errStream)
for i in 0...arrIntASCII.count-1 {
    var temp = dict[arrIntASCII[i]]!
    //print("temp= \(temp)")//, toStream: &errStream)
    ///print("i = \(i)")
    arrAnswer1.append(temp)
}
//print("arrAnswer1= \(arrAnswer1)")
print(" ")
for i in 0...H - 1 {
    var str = ""
    for j in 0...arrAnswer1.count - 1 {
        str = str + String(arrAnswer1[j][i])
        
    }
    arrAnswer2.append(str)
    
}
for i in 0...arrAnswer2.count - 1 {
    print(arrAnswer2[i])
}
