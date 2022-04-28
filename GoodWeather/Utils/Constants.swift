//
//  Constants.swift
//  GoodWeather
//
//  Created by Sergio Santos on 27/04/22.
//

import Foundation

struct Constants {
    
    static let unitUserDefaultKey: String = "unit"
    
    struct Urls {
        static func urlForWeatherByCity(city: String) -> URL {
            // get the default settings for temperature
            let userDefualts = UserDefaults.standard
            let unit = (userDefualts.value(forKey: unitUserDefaultKey) as? String) ?? "Imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=e1633d1fcff242bc7c5422244c5caa96&units=\(unit)")!
        }
    }
}
