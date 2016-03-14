var dishes1: Set<String> = ["хлеб", "овощи", "тушенка", "вода"]
var dishes2: Set = ["хлеб", "овощи", "тушенка", "вода"]
var members1 = Set<String>(arrayLiteral: "Энекин", "Оби Ван", "йода")
var members2 = Set(arrayLiteral: "Энекин", "Оби Ван", "йода")
var musicStyleSet: Set<String> = ["Jazz", "Hip-Hop", "Rock"]
musicStyleSet.remove("Hip-Hop")
musicStyleSet
musicStyleSet.insert("Disco")
musicStyleSet
if musicStyleSet.contains("Rock") {
    print("Рок хорош!!!")
} else {
    print("Любая музыка хороша!")
}

let digits1: Set = [0, 2, 4, 6, 8]
let digits2: Set = [1, 3, 5, 7, 9]
let digits3: Set = [3, 4, 7, 8]
var inter = digits3.intersect(digits2).sort()
var exclusive = digits3.exclusiveOr(digits2).sort()
var union = digits3.union(digits2).sort()
var subtract = digits3.subtract(digits1).sort()

var bSet: Set = [1, 3]
var copyBSet = bSet
if bSet == copyBSet {
    print("Наборы эквивалентны")
}
var aSet: Set = [1, 2, 3, 4, 5]
if bSet.isSubsetOf(aSet) {
    print("bSet - это субнабор для aSet")
}

if aSet.isSupersetOf(bSet) {
    print("aSet - это супернабор для bSet")
}

if aSet.isDisjointWith(bSet) {
    print("Эти наборы не пересекаются")
} else {
    print("Эти наборы пересекаются")
}

if bSet.isStrictSubsetOf(aSet) {
    print("bSet - это субнабор для aSet")
}

if aSet.isStrictSupersetOf(bSet) {
    print("aSet - это супернабор для bSet")
}




















