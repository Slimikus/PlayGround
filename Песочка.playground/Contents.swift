//: Playground - noun: a place where people can play

import UIKit

let magicPhrase = "AAAADD S"

var result = ""
var polozsh = 0
var arrChar: [String] = []

for c in magicPhrase.characters {
    //debugPrint("c= \(c)", toStream: &errStream)
    if arrChar.contains(String(c)) {
        print("arrChar.indexOf = \(arrChar.indexOf(String(c))!)")
        print("polozsh= \(polozsh)")
        while polozsh != arrChar.indexOf(String(c))! {
            if polozsh > arrChar.indexOf(String(c))! {
                polozsh -= 1
                result += "<"
            } else {
                polozsh += 1
                result += ">"
            }
        }
        result += "."
    } else {
        while polozsh != arrChar.count {
//            if polozsh > arrChar.indexOf(String(c))! {
//                polozsh -= 1
//                result += "<"
//            } else {
                polozsh += 1
                result += ">"
            //}
        }
//        if arrChar.isEmpty == false {
//            result += ">"
//        }
        switch c {
        case "A":
            result += "+."
        case "B":
            result += "++."
        case "C":
            result += "+++."
        case "D":
            result += "++++."
        case "E":
            result += "+++++."
        case "F":
            result += "++++++."
        case "G":
            result += "+++++++."
        case "H":
            result += "++++++++."
        case "I":
            result += "+++++++++."
        case "J":
            result += "++++++++++."
        case "K":
            result += "+++++++++++."
        case "L":
            result += "++++++++++++."
        case "M":
            result += "+++++++++++++."
        case "N":
            result += "-------------."
        case "O":
            result += "------------."
        case "P":
            result += "-----------."
        case "Q":
            result += "----------."
        case "R":
            result += "---------."
        case "S":
            result += "--------."
        case "T":
            result += "-------."
        case "U":
            result += "------."
        case "V":
            result += "-----."
        case "W":
            result += "----."
        case "X":
            result += "---."
        case "Y":
            result += "--."
        case "Z":
            result += "-."
        default:
            result += "."
            
        }
        //polozsh += 1
        arrChar.append(String(c))
        //result += ">"
        //debugPrint("result= \(result)", toStream: &errStream)
        
    }
    print("polozsh= \(polozsh)")
}
//debugPrint("result= \(result)", toStream: &errStream)
// Write an action using print("message...")
// To debug: debugPrint("Debug messages...", toStream: &errStream)

print(result)