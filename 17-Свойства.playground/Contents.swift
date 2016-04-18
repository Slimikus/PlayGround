// 17 Свойства

// 17.1 Типы свойств

class AboutMan {
    let firstName = "Егор"
    let secondName = "Петров"
    lazy var wholeName: String = self.generateWholeName()
    func generateWholeName() -> String {
        return self.firstName + " " + self.secondName
    }
}
var Me = AboutMan()
Me.wholeName

class AboutMan2 {
    let firstName = "Егор"
    let secondName = "Петров"
    var wholeName: String {return self.firstName + " " + self.secondName}
}
var Me2 = AboutMan2()
Me2.wholeName

// 17.2 Контроль получения и установки значений

// Геттер и сеттер
struct Circle {
    var coordinates: (x: Int, y: Int)
    var radius: Float
    var perimeter: Float {
        get {
            return 2.0 * 3.14 * self.radius
        }
        set(newPerimeter){
            self.radius = newPerimeter / (2 * 3.14)
        }
    }
}
var myNewCircle = Circle(coordinates: (0, 0), radius: 10)
myNewCircle.perimeter
myNewCircle.perimeter = 31.4
myNewCircle.radius

struct Circle2 {
    var coordinates: (x: Int, y: Int)
    var radius: Float
    var perimeter: Float {
        get {
            return 2.0 * 3.14 * self.radius
        }
        set{
            self.radius = newValue / (2 * 3.14)
        }
    }
}
var myNewCircle2 = Circle2(coordinates: (0, 0), radius: 14)
myNewCircle2.perimeter
myNewCircle2.perimeter = 90
myNewCircle2.radius

// Наблюдатели
struct Circle3 {
    var coordinates: (x: Int, y: Int)
    var radius: Float {
        willSet (newValueOfRadius) {
            print("Вместо значения \(self.radius) устанавливается значение \(newValueOfRadius)")
        }
        didSet (oldValueOfRadius) {
            print("Вместо значения \(oldValueOfRadius) установлено значение \(self.radius)")
        }
    }
    var perimeter: Float {
        get {
            return 2.0 * 3.14 * self.radius
        }
        set{
            self.radius = newValue / (2 * 3.14)
        }
    }
}
var myNewCircle3 = Circle3(coordinates: (0, 0), radius: 10)
myNewCircle3.perimeter
myNewCircle3.perimeter = 94.2
myNewCircle3.radius

// 17.3 Свойства типа

struct SomeStructure {
    static var storedTypeProperty = "Some volue"
    static var computedTypeProperty: Int {
        return 1
    }
}
enum SomeEnumiration {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return 2
    }
}
class SomeClass {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return 3
    }
    class var overrideableCoputedTypeproperty: Int {
        return 4
    }
}

struct AudioChannel {
    static var maxVolume = 5
    var volume: Int {
        didSet {
            if volume > AudioChannel.maxVolume {
                volume = AudioChannel.maxVolume
            }
        }
    }
}
var LeftChannel = AudioChannel(volume: 2)
var RightChannel = AudioChannel(volume: 3)
RightChannel.volume = 6
RightChannel.volume
AudioChannel.maxVolume
AudioChannel.maxVolume = 10
AudioChannel.maxVolume
RightChannel.volume = 8
RightChannel.volume