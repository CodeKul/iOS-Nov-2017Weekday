//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    
    var speed : Double
    var wheels : Int
    var capacity : Int
    var color : UIColor
    
    init() {
        speed = 0.0
        wheels = 2
        capacity = 0
        color = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    }
    
    init(_ speed: Double, _ wheels: Int, _ capacity : Int, _ color: UIColor) {
        
        self.speed = speed
        self.wheels = wheels
        self.capacity = capacity
        self.color = color
    }
    
    init(vehicle : Vehicle) {
        self.speed = vehicle.speed
        self.wheels = vehicle.wheels
        self.capacity = vehicle.capacity
        self.color = vehicle.color
    }
}

var vehicle = Vehicle()

vehicle.speed = 100
vehicle.wheels = 2
vehicle.capacity = 150
vehicle.color = UIColor.red

var anotherVehicle = Vehicle(200, 4, 5, #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))

print("Speed: \(anotherVehicle.speed)\nWheels: \(anotherVehicle.wheels)\nCapacity: \(anotherVehicle.capacity)\nColor: \(anotherVehicle.color)")
