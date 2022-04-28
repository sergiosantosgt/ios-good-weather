//
//  WeatherResponde.swift
//  GoodWeather
//
//  Created by Sergio Santos on 27/04/22.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
    let name: String
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
