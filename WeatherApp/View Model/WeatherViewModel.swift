//
//  WeatherViewModel.swift
//  test_weather
//
//  Created by Amardeep on 11/06/24.
//

import Foundation
import CoreLocation
import Combine

class WeatherViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    private let weatherService = WeatherService.shared
    
    @Published var weather: Weather?
    @Published var forecast: Forecast?
    @Published var isLoading = true
    @Published var locationName = ""
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        fetchWeather(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
    }
    
    func fetchWeather(latitude: Double, longitude: Double) {
        weatherService.fetchWeather(latitude: latitude, longitude: longitude) { [weak self] weather in
            DispatchQueue.main.async {
                self?.weather = weather
            }
        }
        
        weatherService.fetchForecast(latitude: latitude, longitude: longitude) { [weak self] forecast in
            DispatchQueue.main.async {
                self?.forecast = forecast
            }
        }
    }
    
    func searchWeather(city: String) {
        weatherService.searchWeather(city: city) { [weak self] weather, forecast in
            self?.isLoading = false
            DispatchQueue.main.async {
                self?.weather = weather
                self?.forecast = forecast
                self?.locationName = city
            }
        }
    }
    
    func currentDayOfWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: Date())
    }
    
    func currentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d"
        return dateFormatter.string(from: Date())
    }
    
    func getBackgroundImageName(for condition: String) -> String {
           switch condition {
           case "clear sky":
               return "clear sky"
           case "haze":
               return "haze"
           case "rainy":
               return "rainy"
           case "broken clouds":
               return "clouds"
           default:
               return "cold"
           }
       }
}

