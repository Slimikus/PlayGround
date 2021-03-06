// 12.1 Функции как замыкания

//функция отбора купюр
func handle100(wallet: [Int]) -> [Int] {
    var returnWallet = [Int] ()
    for banknot in wallet {
        if banknot == 100 {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}
//электронный кошелёк
var wallet = [10, 50, 100, 100, 5000, 100, 50, 50, 500, 100, 1000]
handle100(wallet)

func handle1000(wallet: [Int]) -> [Int] {
    var returnWallet = [Int] ()
    for banknot in wallet {
        if banknot >= 1000 {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}
handle1000(wallet)

//единая функция формирования результирующего массива
func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if closure(banknot) {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}
//функция сравнения с числом 100
func compare100(banknot:Int) -> Bool {
    return banknot == 100
}
//функция сравнения с числом 1000
func compareMore1000(banknot:Int) -> Bool {
    return banknot >= 1000
}
handle(wallet, closure: compare100)
handle(wallet, closure: compareMore1000)

// 12.2 Замыкающие выражения

//отбор купюр выше 1000 рублей
handle(wallet, closure: {(banknot: Int) -> Bool in
    return banknot >= 1000})
//отбор купюр в 100 рублей
handle(wallet, closure: {(banknot: Int) -> Bool in
    return banknot == 100})

//оптимизация
handle(wallet, closure: {banknot in
    return banknot >= 1000})
handle(wallet, closure: {banknot in
    return banknot == 100})

// 12.3 Неявное возвращение значения

handle(wallet,
    closure: {banknot in banknot >= 1000})
handle(wallet,
    closure: {banknot in banknot == 100})

// 12.4 Сокращённые имена параметров

handle(wallet,
    closure: {$0 >= 1000})
handle(wallet,
    closure: {$0 == 100})

handle(wallet)
    {$0 >= 1000}
handle(wallet)
    {$0 == 100}

let successBanknot = [100, 500]
handle(wallet)
    {banknot in
        for number in successBanknot {
            if number == banknot {
                return true
            }
        }
        return false
}

// 12.5 Переменные-замыкания

let closure: () -> () = {
    print("Замыкающее выражение")
}
closure()

var sum: (numOne: Int, numTwo: Int) -> Int = {
    return $0 + $1
}
sum(numOne: 10, numTwo: 34)

// 12.6 Захват переменных

var a = 1
var b = 2
var closureSum: () -> Int = {
    return a + b
}

var closureSum2: () -> Int = {
    [a, b] in
    return a + b
}

closureSum()
closureSum2()

a = 3
b = 4
closureSum()
closureSum2()

// 12.7 Метод сортировки массивов

var array = [1, 44, 81, 4, 277, 50, 101, 51, 8]
array.sort({ (first: Int, second: Int) -> Bool in
    return first < second
})

var sortArray = array.sort({
    $0 > $1})
var sorrArray2 = array.sort(>)
