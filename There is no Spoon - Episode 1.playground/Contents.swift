//: Playground - noun: a place where people can play

import UIKit

//let width = Int(readLine()!)! // the number of cells on the X axis
let width = 2
//let height = Int(readLine()!)! // the number of cells on the Y axis
let height = 2
//debugPrint("width= \(width), height= \(height)", toStream: &errStream)

//var arrNodeT: [String] = []
var arrNodeT = ["00", "0."]
var arrNodeT1: [Int] = []
var arrNodeT2: [[Int]] = []

//if height > 0 {
//    for i in 0...(height-1) {
//        let line = readLine()! // width characters, each either 0 or .
//        //debugPrint("line= \(line)", toStream: &errStream)
//        arrNodeT.append(line)
//    }
//}

//debugPrint("arrNodeT= \(arrNodeT)", toStream: &errStream)
var sTemp = ""

for i in 0...arrNodeT.count - 1 {
    //var x = 0
    
    for s in arrNodeT[i].characters {
        //print("s= \(s)")
        if s == "0" {
            arrNodeT1.append(1)
        } else {
            arrNodeT1.append(0)
        }
        
    }
    arrNodeT2.append(arrNodeT1)
    arrNodeT1.removeAll()
}
arrNodeT2
for i in 0...arrNodeT2.count - 1 {
    for j in 0...arrNodeT2[i].count - 1 {
        if arrNodeT2[i][j] == 1 {
            print("i= \(i)")
            print("j= \(j)")
            sTemp = sTemp + String(i) + " " + String(j) + " "
            if arrNodeT2[i][j + 1] == 1 {
                
            }

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
