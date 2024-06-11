# SwiftUI Weather App

A simple SwiftUI app that displays the current weather and a 3-day forecast for the user's current location. Users can also search for weather information in different cities.

## Features

- Display current weather and 3-day forecast for the user's current location.
- Search for weather information by city name.
- MVVM architecture for clean and maintainable code.

## Requirements

- Xcode 11 or later
- Swift 5.1 or later
- An API key from [OpenWeatherMap](https://openweathermap.org/)

## Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/SwiftUIWeatherApp.git
    cd SwiftUIWeatherApp
    ```

2. Open the project in Xcode:
    ```bash
    open SwiftUIWeatherApp.xcodeproj
    ```

3. Add your OpenWeatherMap API key:
    - Open `WeatherService.swift`.
    - Replace `YOUR_API_KEY` with your actual OpenWeatherMap API key.

    ```swift
    private let apiKey = "YOUR_API_KEY"
    ```

4. Update Info.plist:
    - Add the following keys to request location permissions:

    ```xml
    <key>NSLocationWhenInUseUsageDescription</key>
    <string>We need your location to provide weather updates.</string>
    ```

## Architecture

The app follows the MVVM (Model-View-ViewModel) architecture:

- **Model**: Defines the data structures (Weather, Forecast, etc.).
- **ViewModel**: Manages the data and business logic (WeatherViewModel).
- **View**: Displays the data (ContentView).

## Project Structure

- `Models`: Contains data structures representing the weather data.
- `ViewModels`: Contains the logic for fetching and managing weather data.
- `Views`: Contains SwiftUI views that present the data.

## Usage

- Run the app on your device or simulator.
- Allow location access when prompted to get the current weather for your location.
- Use the search bar to find the weather information for different cities.

## Project_preview
https://github.com/amardeep-thakuria/WeatherApp/assets/62172464/043b6d44-8907-4e76-b328-5e90a1967b5a


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
