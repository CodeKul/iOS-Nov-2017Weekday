//: Playground - noun: a place where people can play

import UIKit

//Arrays

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

for (index, value) in resultArray.enumerated() {
    print("Item \(index + 1): \(value)")
}

// Sets

var chars = Set<Character>()

chars.insert("A")
chars.insert("B")
chars.insert("Z")
chars.insert("C")
chars.insert("Y")
chars.insert("9")

chars.sorted()

var charsAnother = Set<Character>()

charsAnother.insert("A")
charsAnother.insert("B")
charsAnother.insert("S")
charsAnother.insert("P")
charsAnother.insert("Y")
charsAnother.insert("6")

chars.intersection(charsAnother)
chars.symmetricDifference(charsAnother)
chars.union(charsAnother)
chars.subtracting(charsAnother)
charsAnother.subtracting(chars)

//Dictionaries

var myDict = [1 : "Data1"]

var myAnotherDict = [String : String]()

//myAnotherDict = Dictionary()

myAnotherDict.updateValue("MyData1", forKey: "first")

myAnotherDict["first"]
myAnotherDict["second"] = "MyData2"

myAnotherDict

myDict[1]
