//: Playground - noun: a place where people can play

import UIKit

var str : String?

str = nil

if str == nil {
    str = "Codekul"
}

var str1 = str!

print(str!)

var t = ("Sachin", "Virat", "Yuvraj", 12, 40, 30, 12.34)
t.0
t.1
t.2
t.3
t.4
t.5
t.6

var anyType : Any

anyType = "Welcome"

str = anyType as! String

anyType = 12

var myInt = anyType as! Int

myInt
