//: Playground - noun: a place where people can play

import UIKit

var a = 10
var b = 20

if a > b {
    print("a is greater")
}
else if a == b {
    print("a and b are equal")
}
else {
    print("b is greater")
}

if a > 5 && !(b > 10) {
    print("Success")
}
else {
    print("Failure")
}

// Loops

/*
 while condition {
     statements
     incr/decr
 }
 */

a = 0
while a < 10 {
    if a % 2 == 0 {
        print("CodeKul")
    }
    a += 1
}

/*
 repeat {
     statements
 }while condition
 */

a = 201
repeat {
  
    if a <= 50 && a % 2 == 0 {
        print(a)
    }
    else if a > 50 && a % 2 == 1 {
        print(a)
    }
    a += 1
} while a < 100

/*
 switch opt {
 
 case value1:
     statements
 case value2:
     statements
 default:
     statements
 */

a = 5

var range = 0...100

range

switch a {
case 1:
    fallthrough
case 2...5:
    print("Two")
case 3:
    print("Three")
case 4:
    print("Four")
case 5:
    print("Five")
    fallthrough
case 6:
    print("Six")
    fallthrough
case 7:
    print("Seven")
case 8:
    print("Eight")
case 9:
    print("Nine")
default:
    print("Zero")
}

var myOption = 10.3

switch myOption {
case 10.0:
    print("Ten")
case 10.1:
    print("Ten.One")
case 10.2:
    print("Ten.Two")
case 10.3:
    print("Ten.Three")
case 10.4:
    print("Ten.Four")
case 10.5:
    print("Ten.Five")
default:
    print("Enter correct option!")
}




