//: Playground - noun: a place where people can play

import UIKit

var arr1 = [[1, 0], [1, 0], [1, 0], [1, 0], [0, 0]]

for i in 0...arr1.count-1 {
    print(arr1[i])
}
print(" ")
print("===============")
print(" ")

var sTemp = ""

for i in 0...arr1.count-1{
    for j in 0...arr1[i].count-1 {
        if arr1[i][j] == 1 { // просмотр элементов массива
            sTemp = sTemp + String(j) + " " + String(i) + " "
            print("arr1[\(j)][\(i)]= \(arr1[i][j])")
            var iTemp = i, gBool = false
            var jTemp = j, vBool = false
            for var g in jTemp+1...arr1[iTemp].count-1{ // поиск следующего такого же элемента дальше от найденого элемента по горизонтали
                //print("g= \(g)")
                if arr1[iTemp][g] == 1 {
                    print("g = arr1[\(g)][\(iTemp)]= \(arr1[iTemp][g])")
                    sTemp = sTemp + String(g) + " " + String(iTemp) + " "
                    gBool = true
                    break
                }
            }
            if gBool == false {
                print("bolshe net 1 po goriz")
                sTemp = sTemp + "-1 -1 "
            }
            for v in iTemp+1...arr1.count-1{ // поиск следующего такого же элемента дальше от найденого элемента по вертикали
                if arr1[v][j] == 1 {
                    print("v = arr1[\(j)][\(v)]= \(arr1[v][j])")
                    sTemp = sTemp + String(j) + " " + String(v) + " "
                    vBool = true
                    break
                }
            }
            if vBool == false {
                print("bolshe net 1 po vertic")
                sTemp = sTemp + "-1 -1 "
            }
            print("sTemp= \(sTemp)")
            sTemp = ""
        }
    }
}





