//
//  WeatherViewModel.swift
//  GoodWeather
//
//  Created by Sergio Santos on 27/04/22.
//

import Foundation

class WeatherViewModel {
    let weather: WeatherResponse
    var temperature: Double
    
    init(weather: WeatherResponse) {
        self.weather = weather
        self.temperature = weather.main.temp
    }
    
    var city: String {
        return weather.name
    }
}
