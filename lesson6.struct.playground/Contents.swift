import UIKit
enum Transmission {
    case automatic, manual , robot
}
enum Window {
    case open , close
}
enum Engine {
    case on, off
}


struct TrunkCar {
    var brand : String
    var model : String
    var engineCapacity : Int
    var cargoVolume : Int
    var isUsed : Bool
    var engineOn : Engine
    var windowOpen : Window
    var yearOfProduction : Int
    var transmition : Transmission
}
struct SportCar {
    var brand : String
    var model : String
    var numberOfDoors : Int
    var isEngineOn : Engine
    var yearOfProduction : Int
    var transmition : Transmission
    var windowCondition: Window {
        willSet {
            if newValue == .open {
                print("Двери сейчас откроются")
            }    else {
            print("Двери сейчас закроются")
                    }
    }
    }
}

var truckFirst = TrunkCar(brand: "Man", model: "FR1", engineCapacity: 12, cargoVolume: 20, isUsed: true, engineOn: .off, windowOpen: .close, yearOfProduction: 2020, transmition: .automatic)
var firstCar = SportCar(brand: "Honda", model: "NSX", numberOfDoors: 2, isEngineOn: .off, yearOfProduction: 2000, transmition: .automatic, windowCondition: .close)

firstCar.windowCondition = .open
firstCar.windowCondition
firstCar.windowCondition = .close
firstCar.windowCondition
truckFirst.transmition

