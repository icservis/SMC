//
//  Temperature.swift
//  smc
//
//  Created by Daniel Storm on 7/17/19.
//  Copyright © 2019 Daniel Storm (github.com/DanielStormApps).
//

import Foundation

public struct Temperature {
    
    let celsius: Double
    let fahrenheit: Double
    let kelvin: Double
    
    public static func fahrenheit(celsius: Double) -> Double {
        return (celsius * 1.8) + 32.0
    }
    
    public static func kelvin(celsius: Double) -> Double {
        return celsius + 273.15
    }
}
