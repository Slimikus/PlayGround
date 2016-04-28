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

class NoisyDog2: Dog {
    override func bark() {
        for _ in 1...3 {
            super.bark()
        }
    }
}
var badDog2 = NoisyDog2()
badDog2.bark()

class Dog3: Quadruped {
    override init() {
        super.init()
        self.type = "dog"
    }
    func bark(){
        print("woof")
    }
    func printName(){
        print(self.name)
    }
}

// 19.3 Превентивный модификатор final

 /*
 final class
 final var
 final func
 final subscript
 */

// 19.4 Подмена экземпляров классов

var animalArray: [Quadruped] = []
var someAnimal = Quadruped()
var myDog = Dog2()
var badDog4 = NoisyDog2()
animalArray.append(someAnimal)
animalArray.append(myDog)
animalArray.append(badDog4)






