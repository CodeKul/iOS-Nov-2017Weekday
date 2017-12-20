//: Playground - noun: a place where people can play

import UIKit

class ComplexNumber {
    
    var real : Int?
    var imag : Int?
    
    init() {
        real = 0
        imag = 0
    }
    
    init(real : Int, imag : Int) {
        
        self.real = real
        self.imag = imag
    }
    
    init(_ complexNum : ComplexNumber) {
        
        self.real = complexNum.real
        self.imag = complexNum.imag
    }
    
    func add(_ complexNum : ComplexNumber) -> ComplexNumber {
        
        var c = ComplexNumber()
        c.real = self.real! + complexNum.real!
        c.imag = self.imag! + complexNum.imag!
        
        return c
    }
    
    func display() {
        print("(\(real!) + \(imag!)i)")
    }
}

var c1 = ComplexNumber(real: 10, imag: 20)
c1.display()

var c2 = ComplexNumber(real: 5, imag: 10)
c2.display()

var c3 = c1.add(c2)
c3.display()

var c4 = ComplexNumber(c3)
c4.display()






