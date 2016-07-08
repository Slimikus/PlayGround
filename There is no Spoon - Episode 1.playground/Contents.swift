//: Playground - noun: a place where people can play

import UIKit

//let width = Int(readLine()!)! // the number of cells on the X axis
let width = 3
//let height = Int(readLine()!)! // the number of cells on the Y axis
let height = 2
//debugPrint("width= \(width), height= \(height)", toStream: &errStream)

//var arrNodeT: [String] = []
var arrNodeT = ["0.0", "0.."]
var arrNodeT1: [Int] = []
var arrNodeT2 = [[Int]] (count: height + 1, repeatedValue: [Int](count: width + 1, repeatedValue: 0))

//if height > 0 {
//    for i in 0...(height-1) {
//        let line = readLine()! // width characters, each either 0 or .
//        //debugPrint("line= \(line)", toStream: &errStream)
//        arrNodeT.append(line)
//    }
//}

//debugPrint("arrNodeT= \(arrNodeT)", toStream: &errStream)
var sTemp = ""
var jTemp = 0, iTemp = 0
var prov = true

for i in 0...arrNodeT.count - 1 {
    for s in arrNodeT[i].characters {
        if s == "0" {
            // debugPrint("jTemp= \(jTemp)", toStream: &errStream)
            arrNodeT2[i][jTemp] = 1
            
        } else {
            //debugPrint("jTemp= \(jTemp)", toStream: &errStream)
            arrNodeT2[i][jTemp] = 0
        }
        jTemp += 1
    }
    jTemp = 0
    arrNodeT1.removeAll()
}

for i in 0...arrNodeT2.count - 1 {
    print(arrNodeT2[i])
}
print(" ")
iTemp
jTemp
for i in 0...arrNodeT2.count - 2 {
    for j in 0...arrNodeT2[i].count - 2 {
        if arrNodeT2[i][j] == 1 {
            sTemp = sTemp + String(j) + " " + String(i) + " "
            iTemp += i + 1
            print("iTemp= \(iTemp)")
            jTemp += 1
            for k in i...arrNodeT2
            arrNodeT2[iTemp][j]
//            while arrNodeT2[iTemp][j] != 1 {
//                iTemp += 1
//            }
            
        }
        print(sTemp)
        sTemp = ""
    }
}

//debugPrint("arrNodeT2= \(arrNodeT2)", toStream: &errStream)

//for i in 0...arrNodeT2.count - 1 {
//if arrNodeT2[i] != 0 {

//debugPrint("arrNodeT2[\(i)]= \(arrNodeT2[i])", toStream: &errStream)
//}
//}

//print(sTemp)
//print("")

// Write an action using print("message...")
// To debug: debugPrint("Debug messages...", toStream: &errStream)

// Three coordinates: a node, its right neighbor, its bottom neighbor
//print("0 0 1 0 0 1")
