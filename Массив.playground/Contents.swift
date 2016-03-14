let array1 = ["a", "b", "c"]
var array2 = [2, 4 ,8]

let a1 = 1
let a2 = 2
let a3 = 3
if [1, 2, 3] == [a1, a2, a3]{
    print("Массивы эквивалентны")
} else {
    print("Массивы не эквивалентны")
}

array1[1]
array2[1] = 16
array2

var array3 = ["one", "two", "three", "four"]
var subArray3 = array3[1...2]
array3[1...2] = ["five"]
array3

// пустой массив
var array4: [String] = []
var array5 = [String]()
var array6 = [String?] (count: 5, repeatedValue: nil)

// слияние массивов
var array7 = ["d", "e", "f"]
var array8 = ["g", "h", "i"]
var bigArray = array1 + array7
bigArray += array8
bigArray[8]

// многомерные массивы
var array9 = [[1,2,3],[4,5,6],[7,8,9]]
array9[2]
array9[2][1]
array9.count
subArray3[1] = array3[0]
var array10 = [1, 2, 3, 4, 5]
array10.first
array10.last
array10.append(6)
array10.insert(100, atIndex: 2)
array10.removeAtIndex(2)
// поиск элемента в массиве (например 5 и 10)
var result1 = array10.contains(5)
var result2 = array10.contains(10)
// поиск индекса элемента в массиве (например 5 и 10)
var result3 = array10.indexOf(5)
var result4 = array10.indexOf(10)
array10.minElement()
array10.maxElement()
// реверс массива
array10.reverse()















