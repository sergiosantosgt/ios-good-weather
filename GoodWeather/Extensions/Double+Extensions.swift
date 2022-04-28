//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Sergio Santos on 27/04/22.
//

import Foundation

extension Double {
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
    }
}
