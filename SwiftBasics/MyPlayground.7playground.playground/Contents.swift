//: Playground - noun: a place where people can play

import UIKit

var array = [1,2,3,4,5,6,7,8,9]
var xArray: [String]
xArray = Array<String>()
xArray.append("str")
xArray.append("str another")
var newArray = [0,0,0,0,0,0,0,10]
array.append(10)
array.remove(at: 9)
var resultArray = array + newArray

for i in resultArray {
    print(i)
}

for (index,value) in resultArray.enumerated() {
    print("item \(index + 1):\(value)")
}

var chars = Set<Character>()
chars.insert("A")
chars.insert("B")
chars.insert("C")
chars.insert("9")
chars.sorted()

var charsAnother = Set<Character>()
charsAnother.insert("A")
charsAnother.insert("B")
charsAnother.insert("R")
charsAnother.insert("7")
chars.intersection(charsAnother)
chars.symmetricDifference(charsAnother)
chars.union(charsAnother)
chars.subtracting(charsAnother)


var myDict = [1 : "Data1"]
var myAnotherDict = [ String: String]()
myAnotherDict.updateValue("MyData1",forKey: "first")
myAnotherDict["first"]
myAnotherDict["second"] = "MyData2"
myAnotherDict
myDict[1]

for (index,element) in myAnotherDict.enumerated() {
    
    print("myAnotherDict[\(element.key)] = \(element.value)")
}
