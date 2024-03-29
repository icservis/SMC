//
//  Device.swift
//  smc
//
//  Created by Daniel Storm on 7/17/19.
//  Copyright © 2019 Daniel Storm (github.com/DanielStormApps).
//

import Foundation

public struct Device {
    
    public struct Controller {
        
        public static let isT2: Bool = {
            let system_profiler = Process()
            let pipe = Pipe()
            
            system_profiler.launchPath = "/usr/sbin/system_profiler"
            system_profiler.arguments = ["SPiBridgeDataType"]
            system_profiler.standardOutput = pipe
            
            system_profiler.launch()
            system_profiler.waitUntilExit()
            
            let data = pipe.fileHandleForReading.readDataToEndOfFile()
            let output: String? = String(data: data, encoding: .utf8)
            return output?.contains("Apple T2 Security Chip") == true ? true : false
        }()
        
    }
    
}
