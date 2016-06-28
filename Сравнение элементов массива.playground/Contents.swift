//: Playground - noun: a place where people can play

import UIKit

var array1 = [1, 2, 1, 2, 2]
func arraySchet(array: [Int]) -> [Int] {
    var arrTemp = [0]
    var array1Temp: [Int] = []
    var schet = 1
    
    for i in 0...array1.count - 1 {
        if i < array1.count - 1 {
            arrTemp[0] = array1[i]
            if arrTemp[0] == array1[i + 1] {
                schet = schet + 1
            } else {
                array1Temp.append(schet)
                array1Temp.append(arrTemp[0])
                schet = 1
            }
        } else if i == array1.count - 1 && arrTemp[0] != array1[i] {
            array1Temp.append(schet)
            array1Temp.append(array1[i])
        } else {
            array1Temp.append(schet)
            array1Temp.append(arrTemp[0])
        }
    }
    return array1Temp
}

//print(schet)
print(arraySchet(array1))