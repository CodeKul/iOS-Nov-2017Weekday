//: Playground - noun: a place where people can play

import UIKit

class A {
    
    var a : Int?
    
    init() {
        a = 0
    }
    
    func display() {
        print("Data: \(self.a!)")
    }
}

class AB : A {
    
    var b : Int?
    
    override init() {
        
        super.init()
        b = 0
    }
    
    override func display() {
        super.display()
        print("Data : \(self.b!)")
    }
    
}


var aObj = A()

aObj.a = 10

aObj.a

var bObj = AB()

bObj.b = 20

bObj.a = 40

bObj.a
bObj.display()




