//: 20 Псевдонимы Any и AnyObject

// 20.1 Псевдоним Any

var things = [Any]()
things.append(0)
things.append(0.0)
things.append(42)
things.append("hello")
things.append((3.0, 5.0))
things.append({ (name: String) -> String in "Hello, \(name)" })

// приведение типа Any
for thing in things {
    switch thing {
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double:
        print("a positive double value of \(someDouble)")
    case let someString as String:
        print("a string value of \(someString)")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let stringConverter as String -> String:
        print(stringConverter("Troll"))
    default:
        print("something else")
    }
}

// 20.2 Псевдоним AnyObject

class Quadruped {
    var type = ""
    var name = ""
    func walk(){
        print("walk")
    }
}
class Dog: Quadruped {
    func bark(){
        print("woof")
    }
}
class NoisyDog: Dog {
    override func bark() {
        for _ in 1...3 {
            super.bark()
        }
    }
}

let someObjects: [AnyObject] = [Dog(), NoisyDog(), Dog()]

for object in someObjects {
    let animal = object as! Dog
    print("This is bad Dog")
}

for object in someObjects as! [Dog] {
    print("This is bad Dog")
}



