//: Playground - noun: a place where people can play

import UIKit

class Animal {
    
    var color : UIColor
    var noOfLegs : Int
    var gender : String
    var family : String
    
    init() {
        color = .white
        noOfLegs = 0
        gender = ""
        family = ""
    }
    
    init(_ color : UIColor,_ noOfLegs : Int,_ gender : String,_ family : String) {
        
        self.color = color
        self.noOfLegs = noOfLegs
        self.gender = gender
        self.family = family
    }
    
    func walk() {
        print("\(family) is Walking")
    }
    
    func eat() {
        print("\(family) is eating")
    }
}

class Tiger : Animal {
    
    var voice : String
    var weight : Int
    
    override init() {
        voice = ""
        weight = 0
        super.init()
    }
    
    init(_ color: UIColor, _ noOfLegs: Int, _ gender: String,_ voice : String,_ weight : Int) {
        self.voice = voice
        self.weight = weight
        super.init(color, noOfLegs, gender, "Tiger")
    }
    
    func swim() {
        print("\(family) is swiming")
    }
}

class Dog : Animal {
    
    var voice : String
    var isTrained : Bool
    var name : String
    
    override init() {
        voice = ""
        isTrained = false
        name = ""
        super.init()
    }
    
    init(_ color: UIColor, _ noOfLegs: Int, _ gender: String,_ voice : String,_ isTrained : Bool,_ name : String) {
    
        self.voice = voice
        self.isTrained = isTrained
        self.name = name
        super.init(color, noOfLegs, gender, "Dog")
    }
    
    func sleep() {
        print("\(name) is sleeping")
    }
    
    override func walk() {
        print("\(name) is Walking")
    }
    
    override func eat() {
        print("\(name) is eating")
    }

}


var tiger = Tiger(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), 4, "Male", "Roar", 100)

tiger.swim()
tiger.eat()
tiger.walk()

var dog = Dog(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), 4, "Female", "Bark", true, "Candy")

dog.walk()
dog.sleep()
dog.eat()



