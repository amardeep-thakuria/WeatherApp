@_private(sourceFile: "WeatherAppView.swift") import WeatherApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import OpenMeteoSdk
import SwiftUI

extension ConsequentDaysView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherAppView.swift", line: 173)
        VStack (alignment: .leading) {
            Text(__designTimeString("#18964.[6].[0].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "Monday"))
                .font(.title)
                .foregroundStyle(.white)
     
            VStack (alignment: .leading) {
                Image(systemName: __designTimeString("#18964.[6].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "cloud.drizzle"))
                    .resizable()
                    .frame(width: __designTimeInteger("#18964.[6].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[1].arg[0].value", fallback: 60), height: __designTimeInteger("#18964.[6].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[1].arg[1].value", fallback: 60), alignment: .leading)
                    .foregroundStyle(.white)
                
                Text(__designTimeString("#18964.[6].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[1].arg[0].value", fallback: "Light rain"))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .minimumScaleFactor(__designTimeFloat("#18964.[6].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[1].modifier[3].arg[0].value", fallback: 0.5))
                
                Text(__designTimeString("#18964.[6].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[2].arg[0].value", fallback: "27°C"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
        }
    
#sourceLocation()
    }
}

extension WeatherBackgroundImage {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherAppView.swift", line: 157)
        VStack {
            Image(.cold)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .opacity(__designTimeFloat("#18964.[5].[0].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 0.7))
                
        }
        .padding()
    
#sourceLocation()
    }
}

extension SearchBar {
    @_dynamicReplacement(for: hasNotch()) private func __preview__hasNotch() -> Bool {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherAppView.swift", line: 145)
           if #available(iOS 11.0, *) {
               let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
               if let topPadding = keyWindow?.safeAreaInsets.top, topPadding > 20 {
                   return __designTimeBoolean("#18964.[4].[3].[0].[0].[1].[0].[0]", fallback: true) // Device has a notch
               }
           }
           return __designTimeBoolean("#18964.[4].[3].[1]", fallback: false)
       
#sourceLocation()
    }
}

extension SearchBar {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherAppView.swift", line: 113)
        VStack {
            HStack {
                TextField(__designTimeString("#18964.[4].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Search your city"), text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical, __designTimeInteger("#18964.[4].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 10))
                
                if !text.isEmpty {
                    Button(action: {
                        text = __designTimeString("#18964.[4].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].[0].[0].arg[0].value.[0].[0]", fallback: "")
                    }) {
                        Image(systemName: __designTimeString("#18964.[4].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].[0].[0].arg[1].value.[0].arg[0].value", fallback: "xmark.circle.fill"))
                            .foregroundColor(.gray)
                    }
                }
                
                Button(action: {
                    viewModel.searchWeather(city: text)
                }) {
                    Image(systemName: __designTimeString("#18964.[4].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "magnifyingglass"))
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal)
            .background(Color(.systemGray6))
            .cornerRadius(__designTimeInteger("#18964.[4].[2].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 10))
            .padding()
            .padding(.top, hasNotch() ? __designTimeFloat("#18964.[4].[2].property.[0].[0].arg[0].value.[0].modifier[4].arg[1].value.then.[0]", fallback: 0.05) * UIScreen.main.bounds.height : __designTimeInteger("#18964.[4].[2].property.[0].[0].arg[0].value.[0].modifier[4].arg[1].value.else", fallback: 0))
        }
    
#sourceLocation()
    }
}

extension TodayInformation {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherAppView.swift", line: 62)
        VStack (alignment: .leading) {
            Text(viewModel.currentDayOfWeek())
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Text(viewModel.currentDate())
                .font(.title2)
                .foregroundStyle(.white)
            HStack {
                Image(systemName: __designTimeString("#18964.[3].[2].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "location.circle"))
                    .foregroundStyle(.white)
                
                Text(viewModel.locationName)
                    .font(.title2)
                    .foregroundStyle(.white)
            }
            
            
            if let weather = viewModel.weather {
                VStack (alignment: .leading) {
                    Image(systemName: __designTimeString("#18964.[3].[2].property.[0].[0].arg[1].value.[3].[0].[0].arg[1].value.[0].arg[0].value", fallback: "cloud.drizzle"))
                        .resizable()
                        .frame(width: __designTimeInteger("#18964.[3].[2].property.[0].[0].arg[1].value.[3].[0].[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 60), height: __designTimeInteger("#18964.[3].[2].property.[0].[0].arg[1].value.[3].[0].[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 60), alignment: .leading)
                        .foregroundStyle(.white)
                    
                    Text("\(weather.main.temp, specifier: __designTimeString("#18964.[3].[2].property.[0].[0].arg[1].value.[3].[0].[0].arg[1].value.[1].arg[0].value.[1].value.arg[1].value", fallback: "%.1f"))°C")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Text(weather.weather.first?.description ?? __designTimeString("#18964.[3].[2].property.[0].[0].arg[1].value.[3].[0].[0].arg[1].value.[2].arg[0].value.[0]", fallback: "N/A"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
            } else {
                Text(__designTimeString("#18964.[3].[2].property.[0].[0].arg[1].value.[3].[1].[0].arg[0].value", fallback: "Loading"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            
        }
    
#sourceLocation()
    }
}

extension WeatherAppView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherAppView.swift", line: 16)
        ZStack {
//            MARK: - BACKGROUND IMAGE FOR THE APP
            WeatherBackgroundImage()
            
//            MARK: - SEARCH BAR FOR THE CITY
            VStack {
                SearchBar(text: $searchString, 
                          viewModel: viewModel)
                
                if viewModel.isLoading {
                    ProgressView(__designTimeString("#18964.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].[0].[0].arg[0].value", fallback: "Loading..."))
                        .foregroundColor(.white)
                        .padding()
                } else {
                    TodayInformation(locationName: $searchString,
                                     viewModel: viewModel)
                }
                
//                MARK: - CONSEQUENT VIEWS
                ScrollView (.horizontal) {
                    HStack {
                        ForEach(__designTimeInteger("#18964.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: 0)..<__designTimeInteger("#18964.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].arg[0].value.[1]", fallback: 3)) { _ in
                            ConsequentDaysView()
                                .padding()
                                .background(Color(.gray))
                                .cornerRadius(__designTimeInteger("#18964.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 18))
                        }
                    }
                }
                .padding(.leading, __designTimeInteger("#18964.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].modifier[0].arg[1].value", fallback: 30))
                .scrollIndicators(.hidden)
                Spacer()
                
            }
        }
        .onAppear {
            viewModel.searchWeather(city: searchString)
        }
    
#sourceLocation()
    }
}

import struct WeatherApp.WeatherAppView
import struct WeatherApp.TodayInformation
import struct WeatherApp.SearchBar
import struct WeatherApp.WeatherBackgroundImage
import struct WeatherApp.ConsequentDaysView
#Preview {
//    WeatherAppView()
    
    ConsequentDaysView()
        .padding()
        .background(Color(.gray))
        .cornerRadius(18)
}



