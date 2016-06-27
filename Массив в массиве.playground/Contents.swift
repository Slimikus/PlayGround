//: Playground - noun: a place where people can play

import UIKit

let arrDEFIB: [String] = ["1;Maison de la Prevention Sante;6 rue Maguelone 340000 Montpellier;;3,87952263361082;43,6071285339217", "2;Hotel de Ville;1 place Georges Freche 34267 Montpellier;;3,89652239197876;43,5987299452849", "3;Zoo de Lunaret;50 avenue Agropolis 34090 Mtp;;3,87388031141133;43,6395872778854"]
var DEFIB = ""
let LON = "3,879483"
let LAT = "43,608177"
var N = arrDEFIB.count

print("------------------")
for i in 0...arrDEFIB.count - 1 {
    DEFIB = arrDEFIB[i]
    print(DEFIB)
}
print("------------------")

var arrString: [String] = []
var arrAllString: [[String]] = []
var tempString = ""
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

if N > 0 {
    for i in 0...(N-1) {
        //print("i в начале= \(i)")
        DEFIB = arrDEFIB[i]
        print("DEFIB= \(DEFIB)")
        tempString = ""
        for var s in DEFIB.characters {
            if s != ";" && s != "," {
                tempString = tempString + String(s)
            } else if s == "," {
                
                tempString = tempString + ss
            
            } else {
                //print("tempString= \(tempString)")
                arrString.append(tempString)
                tempString = ""
            }
            
        }
        //print("tempString= \(tempString)")
        arrString.append(tempString)
        print("arrString= \(arrString)")
        arrAllString.append(arrString)
        arrString.removeAll()
        
        
        //print("arrAllString = \(arrAllString)")
        //print("i в конце= \(i)")
        //debugPrint("arrString= \(arrString)", toStream: &errStream)
        
    }
}
var x, y, d: Double
var minD: Double = 99999.0

for i in 0...N-1 {
    //print("arrAllString = \(arrAllString[i][4])")
    x = (dLON - Double(arrAllString[i][4])!) * cos((Double(arrAllString[i][5])! + dLAT) / 2)
    y = (dLAT - Double(arrAllString[i][5])!)
    d = sqrt(pow(x, 2) + pow(y, 2)) * 6371
    if minD > d {
        minD = d
        print(arrAllString[i][1])
    }
    print("x=\(x) y=\(y) d=\(d) minD=\(minD)")
}

print("dLON=\(dLON) dLAT=\(dLAT) N=\(N)")





