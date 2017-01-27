//: Playground - noun: a place where people can play

import UIKit

//  //  Subclassing
class Vehicle {
    var model: String
    var make: String
    var mileage: Int
    var doors: Int
    
    init(model: String, make: String, mileage: Int, doors: Int) {
        self.model = model
        self.make = make
        self.mileage = mileage
        self.doors = doors
    }
    
    func drive(time: Int) {
        let distanceTraveled = (time * 10)
        self.mileage += distanceTraveled
        print("Traveled for \(time) minutes. Traveled \(distanceTraveled) km")
    }
}
//Notice here we want all instances of Sedan to have 4 doors. Here's how we set that up.
class Sedan: Vehicle {
    //This is important
    init(model: String, make: String, mileage: Int) {
        super.init(model: model, make: make, mileage: mileage, doors: 4)
    }
}

//Same thing here within this subclass
class Truck: Vehicle {
    //These next lines are what does it!
    init(model: String, make: String, mileage: Int) {
        super.init(model: model, make: make, mileage: mileage, doors: 2)
    }
    
    override func drive(time: Int) {
        let distanceTraveled = (time * 5)
        self.mileage += distanceTraveled
        print("Traveled for \(time) minutes. Traveled \(distanceTraveled) km")
    }
}

class SportsCar: Vehicle {
    init(model: String, make: String, mileage: Int) {
        super.init(model: model, make: make, mileage: mileage, doors: 2)
    }
    
    override func drive(time: Int) {
        let distanceTraveled = (time * 15)
        self.mileage += distanceTraveled
        print("Traveled for \(time) minutes. Traveled \(distanceTraveled) km")
    }
}

//Upon creating a new subclass instance, notice that all 4 options from the parent class aren't there! 
let s2000 = SportsCar(model: "S2000", make: "Honda", mileage: 0)
s2000.drive(time: 10)   //travels 150km
let f150 = Truck(model: "F150", make: "Ford", mileage: 0)
f150.drive(time: 10)    //travels 50km
let camry = Sedan(model: "Camry", make: "Toyota", mileage: 0)
camry.drive(time: 10)   //travels 100km

