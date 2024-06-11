//
//  WeatherAppView.swift
//  WeatherApp
//
//  Created by Amardeep on 10/06/24.
//

import OpenMeteoSdk
import SwiftUI

struct WeatherAppView: View {
    @StateObject private var viewModel = WeatherViewModel()
    @State var searchString = "Hyderabad"
    
    var body: some View {
        ZStack {
//            MARK: - BACKGROUND IMAGE FOR THE APP
            WeatherBackgroundImage(viewModel: viewModel,
                                   weatherCondition: viewModel.weather?.weather.first?.description ?? "default")
            
//            MARK: - SEARCH BAR FOR THE CITY
            VStack {
                SearchBar(text: $searchString, 
                          viewModel: viewModel)
                
                if viewModel.isLoading {
                    ProgressView("Loading...")
                        .foregroundColor(.white)
                        .padding()
                } else {
                    TodayInformation(locationName: $searchString,
                                     viewModel: viewModel)
                }
                
//                MARK: - CONSEQUENT VIEWS
                ScrollView (.horizontal) {
                    HStack {
                        if let forecast = viewModel.forecast {
                            // Get tomorrow's date
                            let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: Date()) ?? Date()
                            
                            ForEach(forecast.list.indices, id: \.self) { index in
                                    let day = forecast.list[index]
                                    // Calculate the date starting from tomorrow
                                    let date = tomorrow.addingTimeInterval(TimeInterval(index * 24 * 60 * 60))

                                ConsequentDaysView(weekDay: date.formatted("EEE, MMM d"),
                                                   dayWeatherlike: day.weather.first?.description ?? "N/A",
                                                   dayTemperature: "\(day.main.temp.formatToOneDecimal())")
                                .padding()
                                .background(Color(.gray))
                                .cornerRadius(18)
                            }
                        }
                    }
                }
                .padding(.leading, 30)
                .scrollIndicators(.hidden)
                Spacer()
                
            }
        }
        .onAppear {
            viewModel.searchWeather(city: searchString)
        }
    }
}

struct TodayInformation: View {
    @Binding var locationName: String
    @StateObject var viewModel: WeatherViewModel
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(viewModel.currentDayOfWeek())
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Text(viewModel.currentDate())
                .font(.title2)
                .foregroundStyle(.white)
            HStack {
                Image(systemName: "location.circle")
                    .foregroundStyle(.white)
                
                Text(viewModel.locationName)
                    .font(.title2)
                    .foregroundStyle(.white)
            }
            
            
            if let weather = viewModel.weather {
                VStack (alignment: .leading) {
                    Image(systemName: weather.weather.first?.description == "haze" ? "cloud.sun.rain.fill" : "cloud.sun.bolt")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .leading)
                        .foregroundStyle(.white)
                    
                    Text("\(weather.main.temp.formatToOneDecimal())°C")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Text(weather.weather.first?.description ?? "N/A")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
            } else {
                Text("Loading...")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            
        }
    }
}

struct SearchBar: View {
    @Binding var text: String
    @StateObject var viewModel: WeatherViewModel
    
    var body: some View {
        VStack {
            HStack {
                TextField("Search your city", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical, 10)
                
                if !text.isEmpty {
                    Button(action: {
                        text = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                    }
                }
                
                Button(action: {
                    viewModel.searchWeather(city: text)
                }) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding()
            .padding(.top, hasNotch() ? 0.05 * UIScreen.main.bounds.height : 0)
        }
    }
    
    // MARK: - FUNCTION TO CHECK IF THE DEVICE HAS A NOTCH
       private func hasNotch() -> Bool {
           if #available(iOS 11.0, *) {
               let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
               if let topPadding = keyWindow?.safeAreaInsets.top, topPadding > 20 {
                   return true // Device has a notch
               }
           }
           return false
       }
}

struct WeatherBackgroundImage: View {
    @StateObject var viewModel: WeatherViewModel
    var weatherCondition: String
    
    var body: some View {
        VStack {
            Image(viewModel.getBackgroundImageName(for: weatherCondition))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, 
                       height: UIScreen.main.bounds.height)
                .opacity(0.7)
                
        }
        .padding()
    }
}

//MARK: - OTHER DAYS TEMPERATURE
struct ConsequentDaysView: View {
    var weekDay: String
    var dayWeatherlike: String
    var dayTemperature: String
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(weekDay)
                .font(.title)
                .foregroundStyle(.white)
     
            VStack (alignment: .leading) {
                Image(systemName: dayWeatherlike == "haze" ? "cloud.sun.rain.fill" : "cloud.sun.bolt")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .leading)
                    .foregroundStyle(.white)
                
                Text(dayWeatherlike)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .minimumScaleFactor(0.5)
                
                Text(dayTemperature)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    WeatherAppView()
}
