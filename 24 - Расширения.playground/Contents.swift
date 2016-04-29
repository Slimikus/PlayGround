//: 24 - Расширения

// 24.1 Вычисляемые свойства в расширениях

extension Double {
    var km: Double { return self * 1000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("Один дюйм - это \(oneInch) метра")
let threeFeet = 3.ft
print("Три фута - это \(threeFeet) метра")


