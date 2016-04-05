// Параметры
var skorSoed: (Double, String)
var obyemSkach: (Double, String)
var sec: Int
var min: Int
var chas: Int
var den: Int

// Ввод данных
skorSoed.0 = 199
skorSoed.1 = "kbyte"
skorSoed
obyemSkach.0 = 15000
obyemSkach.1 = "Mb"
obyemSkach

// Перевод единиц измерения в байты
func perevodVByte(var obyem: Double, var _ velich: String) -> (Double, String) {
    switch velich {
    case "bit":
        print("Объём файла \(obyem) \(velich)")
    case "Kb":
        print("Объём файла \(obyem) \(velich)")
        obyem = obyem * 1024
    case "Mb":
        print("Объём файла \(obyem) \(velich)")
        obyem = obyem * 1024 * 1024
    case "Gb":
        print("Объём файла \(obyem) \(velich)")
        obyem = obyem * 1024 * 1024 * 1024
    case "Tb":
        print("Объём файла \(obyem) \(velich)")
        obyem = obyem * 1024 * 1024 * 1024 * 1024
    default:
        break
    }
    velich = "byte"
    return (obyem, velich)
}



// Определение времени скачивания
func vremyaSkach (sec: Int) {
    var min: Int
    var tMin: Int
    var tSec: Int
    var chas: Int
    // Подсчёта секунд
    func fMin(sec: Int) -> (tSec: Int, min: Int) {
        let min = sec / 60
        var tSec = min * 60
        tSec = sec - tSec
        return (tSec, min)
    }
    // Подсчёт часов
    func fChas(tMin: Int) -> (tMin: Int, chas: Int) {
        let chas = min / 60
        var tMin = chas * 60
        tMin = min - tMin
        return (tMin, chas)
    }
    
    skorSoed.0 = skorSoed.0 * 1024
    if obyemSkach.0 < skorSoed.0 {
        print("Время скачивания меньше секунды")
    } else {
        switch sec {
        case  0...59: //секунды
            print("Время скачивания \(sec) секунд(-а)(-ы)")
        case 60...3599: //минуты
            sec
            let request = fMin(sec)
            print("Время скачивания \(request.min) минут(-а)(-ы) \(request.tSec) секунд(-а)(-ы)")
        case 3600...86399: //часы
            sec
            let request1 = fMin(sec)
            min = request1.min
            let request2 = fChas(request1.min)
            print("Время скачивания \(request2.chas) час(-а)(-ов) \(request2.tMin) минут(-а)(-ы) \(request1.tSec) секунд(-а)(-ы)")
        default:
            break
        }
    }
}

obyemSkach = perevodVByte(obyemSkach.0, obyemSkach.1)

// расчёт в зависивости от единиц скорости
switch skorSoed.1 {
    case "byte":
        print("Скорость очень маленькая")
        sec = Int(obyemSkach.0  / skorSoed.0)
        vremyaSkach(sec)
    case "kbyte":
        print("Скорость скачивания \(skorSoed.0) kByte/сек")
        sec = Int(obyemSkach.0 / 1024 / skorSoed.0)
        vremyaSkach(sec)
    case "Mbyte":
        print("Скорость скачивания \(skorSoed.0) MByte/сек")
        sec = Int(obyemSkach.0 / 1024 / 1024 / skorSoed.0)
        vremyaSkach(sec)
    default:
        break
}






