// Параметры
var skorSoed: (Double, String)
var obyemSkach: (Double, String)
var sec: Int
var min: Int
var chas: Int
var den: Int

// Ввод данных
skorSoed.0 = 199
skorSoed.1 = "Mbyte"
skorSoed
obyemSkach.0 = 1500
obyemSkach.1 = "Mb"
obyemSkach

// Перевод единиц измерения в байты
func perevodVByte(var obyem: Double, var velich: String) -> (Double, String) {
    switch velich {
    case "bit":
        print("Объём Вашего файла \(obyem) \(velich)")
    case "Kb":
        print("Объём Вашего файла \(obyem) \(velich)")
        obyem = obyem * 1024
    case "Mb":
        print("Объём Вашего файла \(obyem) \(velich)")
        obyem = obyem * 1024 * 1024
    case "Gb":
        print("Объём Вашего файла \(obyem) \(velich)")
        obyem = obyem * 1024 * 1024 * 1024
    case "Tb":
        print("Объём Вашего файла \(obyem) \(velich)")
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
    var tSec: Int
    obyemSkach.0
    skorSoed.0 = skorSoed.0 * 1024
    if obyemSkach.0 < skorSoed.0 {
        print("Время скачивания меньше секунды")
    } else {
        if sec % 60 == 0 {
            min = sec / 60
            print("Время скачивания \(min)")
        } else {
            min = sec / 60
            tSec = min * 60
            tSec = sec - tSec
            print("Время скачивания \(min) минут \(tSec) секунд")
        }
        if min % 60 == 0 {
            
        }
    }
}

obyemSkach = perevodVByte(obyemSkach.0, velich: obyemSkach.1)

// расчёт в зависивости от единиц скорости
switch skorSoed.1 {
    case "byte":
        print("Скорость маленькая")
        obyemSkach.0 = obyemSkach.0  / skorSoed.0
    case "kbyte":
        print("Скорость соединения \(skorSoed.0) kByte/сек")
        sec = Int(obyemSkach.0 / 1024 / skorSoed.0)
        vremyaSkach(sec)
    case "Mbyte":
        print("Скорость соединения \(skorSoed.0) MByte/сек")
        print("Объём скачиваемого файла \(obyemSkach.0) \(obyemSkach.1)")
        sec = Int(obyemSkach.0 / 1024 / 1024 / skorSoed.0)
        vremyaSkach(sec)
    default:
        break
}






