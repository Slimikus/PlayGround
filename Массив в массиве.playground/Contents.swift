//: Playground - noun: a place where people can play

import UIKit

let arrDEFIB: [String] = ["1;Maison de la Prevention Sante;6 rue Maguelone 340000 Montpellier;;3,87952263361082;43,6071285339217", "2;Hotel de Ville;1 place Georges Freche 34267 Montpellier;;3,89652239197876;43,5987299452849", "3;Zoo de Lunaret;50 avenue Agropolis 34090 Mtp;;3,87388031141133;43,6395872778854"]
var DEFIB = ""
let LON = "3,879483"
let LAT = "43,608177"
var N = arrDEFIB.count

print("------------------")
for i in 0...arrDEFIB.count - 1 {
    DEFIB = DEFIB + arrDEFIB[i]
    print(DEFIB)
}
print("------------------")

var arrString: [String] = []
var arrAllString: [[String]] = [[]]
var tempString = ""
var tempI = 0
let ss = "."
var sLON = ""
var sLAT = ""
for s in LON.characters {
    if s == "," {
        sLON = sLON + ss
    } else {
        sLON = sLON + String(s)
    }
}
for s in LAT.characters {
    if s == "," {
        sLAT = sLAT + ss
    } else {
        sLAT = sLAT + String(s)
    }
}

var dLON: Double = Double(sLON)!
var dLAT: Double = Double(sLAT)!
var x, y, d: Double
var minD: Double = 99999.0

if N > 0 {
    for i in 0...(N-1) {
        //debugPrint("i в начале= \(i)", toStream: &errStream)
        //let DEFIB = readLine()!
        //debugPrint("DEFIB= \(DEFIB)", toStream: &errStream)
        tempString = ""
        for s in DEFIB.characters {
            if s != ";" && s != "," {
                tempString = tempString + String(s)
            } else if s == "," {
                
                tempString = tempString + String(ss)
            } else {
                //debugPrint("tempString= \(tempString)", toStream: &errStream)
                arrString.append(tempString)
                tempString = ""
                
            }
            
        }
        //debugPrint("tempString= \(tempString)", toStream: &errStream)
        arrString.append(tempString)
        //debugPrint("arrString= \(arrString)", toStream: &errStream)
        //
        arrAllString.append(arrString)
        arrString.removeAll()
        
    }
}
arrAllString.removeFirst()

for i in 0...N - 1 {
    //debugPrint("arrAllString[\(i)] = \(arrAllString[i][4])", toStream: &errStream)
    x = (dLON - Double(arrAllString[i][4])!) * cos((Double(arrAllString[i][5])! + dLAT) / 2)
    y = (dLAT - Double(arrAllString[i][5])!)
    d = sqrt(pow(x, 2) + pow(y, 2)) * 6371
    if minD > d {
        minD = d
        tempI = i
    }
    print("x=\(x) y=\(y) d=\(d) minD=\(minD)")
}
print(arrAllString[tempI][1])
print(" ")
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





