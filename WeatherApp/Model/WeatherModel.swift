//
//  WeatherModel.swift
//  test_weather
//
//  Created by Amardeep on 11/06/24.
//

import Foundation

struct Weather: Codable {
    let main: Main
    let weather: [WeatherCondition]
}

struct Main: Codable {
    let temp: Double
}

struct WeatherCondition: Codable {
    let description: String
}

struct Forecast: Codable {
    let list: [ForecastDay]
}

struct ForecastDay: Codable {
    let dt: TimeInterval
    let main: Main
    let weather: [WeatherCondition]
}

