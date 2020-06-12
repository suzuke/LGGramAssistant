//
//  CBBlueLightManager.swift
//  ThinkpadAssistant
//
//  Created by suzuke on 2020/6/11.
//  Copyright © 2020 Matthäus Szturc. All rights reserved.
//

import Foundation

final class NightShiftManager {
    
    private static let blueLightClient = CBBlueLightClient()
    
    static func toggleCBBlueLight() {
        isEnabled() ? disable() : enable()
    }
    
    static func isEnabled() -> Bool {
        var blueLightStatus : StatusData = StatusData.init()
        blueLightClient.getBlueLightStatus(&blueLightStatus)
        return blueLightStatus.enabled == 1
    }
    
    static func disable() {
        blueLightClient.setEnabled(false)
    }
    
    static func enable() {
        blueLightClient.setEnabled(true)
    }
}
