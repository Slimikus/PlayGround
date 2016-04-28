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

