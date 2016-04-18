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

