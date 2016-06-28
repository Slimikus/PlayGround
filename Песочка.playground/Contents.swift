//: Playground - noun: a place where people can play

import UIKit
// Нахождение кротчайшего пути. Метод волны

let lenghtMap = 10
let widhtMap = 8

func Wave(xBegin: Int, _ yBegin: Int, _ xEnd: Int, _ yEnd: Int) {
    var k = 1
    var flag = true
    var map: [[Int]] = []
    while flag {
        flag = false
        for x in 0...lenghtMap - 1 {
            for y in 0...widhtMap - 1 {
                if map[x][y] == k {
                    if map[x + 1][y] == 0 {
                        map[x + 1][y] = k + 1
                        flag = true
                    }
                    if map[x][y - 1] == 0 {
                        map[x][y - 1] = k + 1
                        flag = true
                    }
                    if map[x][y + 1] == 0 {
                        map[x][y + 1] = k + 1
                        flag = true
                    }
                    if map[x - 1][y] == 0 {
                        map[x - 1][y] = k + 1
                        flag = true
                    }
                } else {
                    if map[xEnd][yEnd] > 0 {
                        flag = false
                    } else {
                        k = k + 1
                    }
                }
            }
        }
        print(map)
    }
    
}
func Track(xEnd: Int, eEnd: Int) {
    
}

Wave(1, 1, 3, 4)
var arr: [[Int]] = [[1, 2], [3, 4]]
arr[1][1]





