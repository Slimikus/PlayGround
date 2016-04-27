// 19 - Наследование

// 19.1 Синтаксис наследования

// суперкласс
class Quadruped {
    var type = ""
    var name = ""
    func walk(){
        print("walk")
    }
}
// подкласс
class Dog: Quadruped {
    func bark() {
        print("woof")
    }
}
var dog = Dog()
dog.type = "dog"
dog.walk()
dog.bark()

class Dog2: Quadruped {
    func bark(){
        print("woof")
    }
    func printName(){
        print(self.name)
    }
}
var dog2 = Dog2()
dog2.name = "Dragon Wan Helsing"
dog2.printName()

// 19.2 Переопределение наследуемых элементов

class NoisyDog: Dog {
    override func bark() {
        print("woof")
        print("woof")
        print("woof")
    }
}
var badDog = NoisyDog()
badDog.bark()





