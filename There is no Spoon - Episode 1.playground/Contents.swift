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
//debugPrint("arrNodeT2= \(arrNodeT2)", toStream: &errStream)
//var gBool = false, vBool = false

for i in 0...arrNodeT2.count - 1 {
    for j in 0...arrNodeT2[i].count - 1 {
        if arrNodeT2[i][j] == 1 {
            var gBool = false, iTemp = i
            var vBool = false, jTemp = j
            sTemp = sTemp + String(j) + " " + String(i) + " "
            for g in jTemp + 1...arrNodeT2[iTemp].count - 1 {
                if arrNodeT2[iTemp][g] == 1 {
                    //debugPrint("g = arrNodeT2[\(g)][\(iTemp)]= \(arrNodeT2[iTemp][g])", toStream: &errStream)
                    sTemp = sTemp + String(g) + " " + String(iTemp) + " "
                    gBool = true
                    break
                }
                
            }
            if gBool == false {
                sTemp = sTemp + "-1 -1 "
                //break
            }
            for v in iTemp+1...arrNodeT2.count-1{ // поиск следующего такого же элемента дальше от найденого элемента по вертикали
                if arrNodeT2[v][j] == 1 {
                    //debugPrint("v = arrNodeT2[\(j)][\(v)]= \(arrNodeT2[v][j])", toStream: &errStream)
                    sTemp = sTemp + String(j) + " " + String(v) + " "
                    vBool = true
                    break
                }
                
            }
            if vBool == false {
                sTemp = sTemp + "-1 -1 "
                // break
            }
            //debugPrint("sTemp= \(sTemp)", toStream: &errStream)
            print(sTemp)
            sTemp = ""
        }
        
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
