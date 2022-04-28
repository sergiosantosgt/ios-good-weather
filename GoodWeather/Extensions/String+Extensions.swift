//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Sergio Santos on 27/04/22.
//

import Foundation

extension String {
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
