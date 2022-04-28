//
//  AddWeatherViewModel.swift
//  GoodWeather
//
//  Created by Sergio Santos on 27/04/22.
//

import Foundation

class AddWeatherViewModel {
    
    func addWeather(for city: String, completion: @escaping (WeatherViewModel) -> Void) {
        let weatherUrl = Constants.Urls.urlForWeatherByCity(city: city)
        let weatherResource = Resource<WeatherResponse>(url: weatherUrl) { data in
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            return weatherResponse
        }
        
        Webservice().load(resource: weatherResource) { result in
            if let weatherResource = result {
                let vm = WeatherViewModel(weather: weatherResource)
                completion(vm)
            }
        }
    }
}
