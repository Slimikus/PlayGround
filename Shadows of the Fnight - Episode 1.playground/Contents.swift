//: Playground - noun: a place where people can play

import UIKit

let W = 25 // width of the building.
let H = 33 // height of the building.
let N = 49 // maximum number of turns before game over.
// начальные координаты
let X0 = 2
let Y0 = 29
let xEnd = 24
let yEnd = 2

var x1 = X0
var y1 = Y0
var tempShagX = W / 2
var tempShagY = H / 2
var poslShag = "U"

while x1 != xEnd && y1 != yEnd {
    switch bombDir {
    case "U":
        while (y1 - tempShagY) < 0 {
            tempShagY = tempShagY / 2
        }
        if poslShag == "D" {
            tempShagY = tempShagY / 2
        }
        y1 -= tempShagY
        poslShag = "U"
        print("\(x1) \(y1)")
    case "UR":
        while (x1 + tempShagX) >= W {
            tempShagX = tempShagX / 2
        }
        while (y1 - tempShagY) < 0 {
            tempShagY = tempShagY / 2
        }
        if poslShag == "UL"  {
            tempShagX = tempShagX / 2
            tempShagY = tempShagY / 2
        }
        if poslShag == "DR" {
            tempShagY = tempShagY / 2
        }
        if poslShag == "DL" {
            tempShagX = tempShagX / 2
        }
        x1 += tempShagX
        y1 -= tempShagY
        poslShag = "UR"
        print("\(x1) \(y1)")
    case "R":
        while (x1 + tempShagX) >= W {
            tempShagX = tempShagX / 2
        }
        if poslShag == "L" {
            tempShagX = tempShagX / 2
            
        }
        //debugPrint("x1= \(x1), y1= \(y1)", toStream: &errStream)
        poslShag = "R"
        x1 += tempShagX
        print("\(x1) \(y1)")
    case "DR":
        while (x1 + tempShagX) >= W {
            tempShagX = tempShagX / 2
        }
        
        while (y1 + tempShagY) >= H {
            tempShagY = tempShagY / 2
        }
        if poslShag == "UL"  {
            tempShagX = tempShagX / 2
            tempShagY = tempShagY / 2
        }
        if  poslShag == "UR" {
            tempShagY = tempShagY / 2
        }
        if poslShag == "DL" {
            tempShagX = tempShagX / 2
        }
        //debugPrint("x1= \(x1), y1= \(y1)", toStream: &errStream)
        x1 += tempShagX
        y1 += tempShagY
        poslShag = "DR"
        print("\(x1) \(y1)")
    case "D":
        //debugPrint("y1 + tempShagY= \(y1 + tempShagY)", toStream: &errStream)
        while (y1 + tempShagY) >= H {
            
            tempShagY = tempShagY / 2
        }
        if poslShag == "U"  {
            tempShagY = tempShagY / 2
        }
        //debugPrint("x1= \(x1), y1= \(y1)", toStream: &errStream)
        y1 += tempShagY
        poslShag = "D"
        print("\(x1) \(y1)")
    case "DL":
        while (y1 + tempShagY) >= H {
            tempShagY = tempShagY / 2
        }
        while (x1 - tempShagX) < 0 {
            tempShagX = tempShagX / 2
        }
        if poslShag == "UR" {
            tempShagX = tempShagX / 2
            tempShagY = tempShagY / 2
        }
        if poslShag == "DR" {
            tempShagX = tempShagX / 2
            
        }
        if poslShag == "UL"  {
            
            tempShagY = tempShagY / 2
        }
        x1 -= tempShagX
        y1 += tempShagY
        poslShag = "DL"
        print("\(x1) \(y1)")
    case "L":
        while (x1 - tempShagX) < 0 {
            tempShagX = tempShagX / 2
        }
        if poslShag == "R"  {
            tempShagX = tempShagX / 2
            
        }
        x1 -= tempShagX
        poslShag = "L"
        print("\(x1) \(y1)")
    case "UL":
        while (y1 - tempShagY) < 0 {
            tempShagY = tempShagY / 2
        }
        while (x1 - tempShagX) < 0 {
            tempShagX = tempShagX / 2
        }
        if poslShag == "DR" {
            tempShagX = tempShagX / 2
            tempShagY = tempShagY / 2
        }
        if poslShag == "UR" {
            tempShagX = tempShagX / 2
            
        }
        if poslShag == "DL"  {
            
            tempShagY = tempShagY / 2
        }
        x1 -= tempShagX
        y1 -= tempShagY
        poslShag = "UL"
        print("\(x1) \(y1)")
    default:
        break
    }
}
