//
//  main.swift
//  LearningSwift
//
//  Created by Николай Балашов on 05/10/2019.
//  Copyright © 2019 Николай Балашов. All rights reserved.
//

import Foundation

enum CollectionTypeCar: String {
    case passengerCar
    case motorcycle
}

enum CollectionColor: String {
    case black
    case white
    case blackAndWhite
}


//Структура
struct Car {
    let id: Int?
    var typeCar: CollectionTypeCar
    var brand: String
    var model: String
    let color: CollectionColor
    var automaticTransmission: String
    var engine: String
    private var serialNumber: Int
    
    var informationSerialNumber: Int {
        get {
            return serialNumber
        }
        set {
            serialNumber = newValue
        }
    }
    
    var informationCar: String {
        get {
            return model + " " + brand
        }
    }
    
    mutating func DefinitionEngine (typeCar: CollectionTypeCar) {
        switch typeCar {
        case .passengerCar:
            self.engine = "V6"
        case .motorcycle:
            self.engine = "GT3"
        }
        print("Детали автомобиля: " + brand + " " + engine)
    }
    
    init (id: Int?, typeCar: CollectionTypeCar, brand: String, model: String, color: CollectionColor, automaticTransmission: String) {
        self.id = id
        self.typeCar = typeCar
        self.brand = brand
        self.model = model
        self.color = color
        self.automaticTransmission = automaticTransmission
        self.engine = ""
        self.serialNumber = 0 //дефолтное значение
    }
    
}

var carOne = Car(id: 0, typeCar: .passengerCar, brand: "Volvo", model: "S90", color: .black, automaticTransmission: "Avtomat")

print (carOne)

//var carOne = Car (id: 0, typeCar: .passengerCar, brand: "Volvo", model: "S90", color: .black, automaticTransmission: "Avtomat", engine: "", serialNumber: 35235235)
//var carTwo = Car (id: 1, typeCar: .motorcycle, brand: "SUZUKI", model: "bandit", color: .blackAndWhite, automaticTransmission: "Avtomat", engine: "", serialNumber: 5747362346)


carOne.DefinitionEngine(typeCar: .passengerCar)
//carTwo.informationOutputCar = 11122233
//print(carTwo.serialNumber)

print("Марка и модель автомобиля: " + carOne.informationCar)






