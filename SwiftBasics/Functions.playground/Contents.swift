//: Playground - noun: a place where people can play

import UIKit

//Function defination
func functionName() {
    
    print("My first function")
}

// Function call
functionName()

//Function defination
func functionWithParams(_ firstParam: String,_ secondParam: Int) {
    
    print("This is first param: \(firstParam)\nThis is second param \(secondParam)")
}

// Function call
functionWithParams("One", 2)

//Function defination
func functionWithReturningValue() -> String {
    
    var returnData = "This is returned value"
    
    return returnData
}

// Function call
var str = functionWithReturningValue()

print(str)

//Closure
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})

print(reversedNames)

//Enumeration

enum weekday {
    case sunday
    case monday
    case tueday
    case wednesday
    case thursday
    case friday
    case saturday
}

var day : weekday

day = .wednesday

switch day {
case .sunday:
    print("Today is sunday")
case .monday:
    print("Today is monday")
case .tueday:
    print("Today is tueday")
case .wednesday:
    print("Today is wednesday")
case .thursday:
    print("Today is thursday")
case .friday:
    print("Today is friday")
case .saturday:
    print("Today is saturday")
default:
    print("Not a week day")
}
