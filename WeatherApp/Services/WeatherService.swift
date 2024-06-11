//
//  WeatherService.swift
//  test_weather
//
//  Created by Amardeep on 11/06/24.
//

import Foundation

class WeatherService {
    static let shared = WeatherService()
    private init() {}
    
    private let apiKey = "b15adb6803778da8441229739b8c4d9c"
    private let weatherBaseURL = "https://api.openweathermap.org/data/2.5/weather"
    private let forecastBaseURL = "https://api.openweathermap.org/data/2.5/forecast"
    
    func fetchWeather(latitude: Double, longitude: Double, completion: @escaping (Weather?) -> Void) {
        let urlString = "\(weatherBaseURL)?lat=\(latitude)&lon=\(longitude)&appid=\(apiKey)&units=metric"
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let weather = try? JSONDecoder().decode(Weather.self, from: data)
            completion(weather)
        }.resume()
    }
    
    func fetchForecast(latitude: Double, longitude: Double, completion: @escaping (Forecast?) -> Void) {
        let urlString = "\(forecastBaseURL)?lat=\(latitude)&lon=\(longitude)&appid=\(apiKey)&units=metric&cnt=3"
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let forecast = try? JSONDecoder().decode(Forecast.self, from: data)
            completion(forecast)
        }.resume()
    }
    
    func searchWeather(city: String, completion: @escaping (Weather?, Forecast?) -> Void) {
        let weatherURLString = "\(weatherBaseURL)?q=\(city)&appid=\(apiKey)&units=metric"
        let forecastURLString = "\(forecastBaseURL)?q=\(city)&appid=\(apiKey)&units=metric&cnt=3"
        
        let weatherURL = URL(string: weatherURLString)!
        let forecastURL = URL(string: forecastURLString)!
        
        let group = DispatchGroup()
        
        var weather: Weather?
        var forecast: Forecast?
        
        group.enter()
        URLSession.shared.dataTask(with: weatherURL) { data, response, error in
            if let data = data {
                weather = try? JSONDecoder().decode(Weather.self, from: data)
            }
            group.leave()
        }.resume()
        
        group.enter()
        URLSession.shared.dataTask(with: forecastURL) { data, response, error in
            if let data = data {
                forecast = try? JSONDecoder().decode(Forecast.self, from: data)
            }
            group.leave()
        }.resume()
        
        group.notify(queue: .main) {
            completion(weather, forecast)
        }
    }
}

