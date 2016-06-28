//: Playground - noun: a place where people can play

import UIKit

let R = 1
let L = 2
print("R = \(R), L = \(L)")

var arrInt: [Int] = []
var arrTemp: [Int] = []
var temp = 0
var s = ""
var x = 1
arrInt.append(R)

for i in 0...L - 1 {
    arrTemp = arrInt
    for var j in 0...arrInt.count - 1 {
    print("arrInt.count = \(arrInt.count)")
    print("arrTemp = \(arrTemp)")
        if arrTemp.count <= 1 && L != 1 {
            print("i (arrTemp.count <= 1 ) = \(i)")
            print("j (arrTemp.count <= 1 ) = \(j)")
            print(arrTemp)
            arrTemp.append(R)
            
            arrInt = arrTemp
        } else if L == 1 {
            var rez = arrTemp.count
            print("Ответ: \(arrTemp[rez - 1])")
        } else {
            j = j + 1
            print("i = \(i)")
            print("j = \(j)")
            print(arrTemp)
            if arrTemp[j - 1] == arrTemp[j] {
                x = x + 1
            
                arrTemp[j - 1] = x
            } else {
                x = 1
                arrTemp.insert(x, atIndex: (j - 1))
                
            }
            x = 1
            arrInt = arrTemp
            print("arrInt = \(arrInt)")
        }
    }
}

print("arrTemp в конце = \(arrTemp)")



//print(R)

