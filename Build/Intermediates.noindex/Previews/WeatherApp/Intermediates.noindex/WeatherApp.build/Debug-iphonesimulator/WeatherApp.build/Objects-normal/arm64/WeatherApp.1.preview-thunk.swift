@_private(sourceFile: "WeatherApp.swift") import WeatherApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ConsequentDaysView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherApp.swift", line: 139)
        VStack (alignment: .leading) {
            Text(__designTimeString("#18842.[5].[0].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "Monday"))
                .font(.largeTitle)
                .foregroundStyle(.white)
     
            VStack (alignment: .leading) {
                Image(systemName: __designTimeString("#18842.[5].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "cloud.drizzle"))
                    .resizable()
                    .frame(width: __designTimeInteger("#18842.[5].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[1].arg[0].value", fallback: 60), height: __designTimeInteger("#18842.[5].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[1].arg[1].value", fallback: 60), alignment: .leading)
                    .foregroundStyle(.white)
                
                Text(__designTimeString("#18842.[5].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[1].arg[0].value", fallback: "27°C"))
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
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherApp.swift", line: 124)
        VStack {
            Image(.cold)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .opacity(__designTimeFloat("#18842.[4].[0].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 0.7))
                
        }
        .padding()
    
#sourceLocation()
    }
}

extension SearchBar {
    @_dynamicReplacement(for: hasNotch()) private func __preview__hasNotch() -> Bool {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherApp.swift", line: 112)
           if #available(iOS 11.0, *) {
               let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
               if let topPadding = keyWindow?.safeAreaInsets.top, topPadding > 20 {
                   return __designTimeBoolean("#18842.[3].[2].[0].[0].[1].[0].[0]", fallback: true) // Device has a notch
               }
           }
           return __designTimeBoolean("#18842.[3].[2].[1]", fallback: false)
       
#sourceLocation()
    }
}

extension SearchBar {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherApp.swift", line: 87)
        VStack {
            HStack {
                TextField(__designTimeString("#18842.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Search your city"), text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical, __designTimeInteger("#18842.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 10))
                if !text.isEmpty {
                    Button(action: {
                        text = __designTimeString("#18842.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].[0].[0].arg[0].value.[0].[0]", fallback: "")
                    }) {
                        Image(systemName: __designTimeString("#18842.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].[0].[0].arg[1].value.[0].arg[0].value", fallback: "xmark.circle.fill"))
                            .foregroundColor(.gray)
                    }
                }
                Image(systemName: __designTimeString("#18842.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "magnifyingglass"))
            }
            .padding(.horizontal)
            .background(Color(.systemGray6))
            .cornerRadius(__designTimeInteger("#18842.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 10))
            .padding()
            .padding(.top, hasNotch() ? __designTimeFloat("#18842.[3].[1].property.[0].[0].arg[0].value.[0].modifier[4].arg[1].value.then.[0]", fallback: 0.05) * UIScreen.main.bounds.height : __designTimeInteger("#18842.[3].[1].property.[0].[0].arg[0].value.[0].modifier[4].arg[1].value.else", fallback: 0))
        }
    
#sourceLocation()
    }
}

extension TodayInformation {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherApp.swift", line: 44)
        VStack (alignment: .leading) {
            Text(__designTimeString("#18842.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "Sunday"))
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Text(__designTimeString("#18842.[2].[0].property.[0].[0].arg[1].value.[1].arg[0].value", fallback: "Jun 10th"))
                .font(.title2)
                .foregroundStyle(.white)
            HStack {
                Image(systemName: __designTimeString("#18842.[2].[0].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "location.circle"))
                    .foregroundStyle(.white)
                
                Text(__designTimeString("#18842.[2].[0].property.[0].[0].arg[1].value.[2].arg[0].value.[1].arg[0].value", fallback: "Hyderabad"))
                    .font(.title2)
                    .foregroundStyle(.white)
            }
            
            
            VStack (alignment: .leading) {
                Image(systemName: __designTimeString("#18842.[2].[0].property.[0].[0].arg[1].value.[3].arg[1].value.[0].arg[0].value", fallback: "cloud.drizzle"))
                    .resizable()
                    .frame(width: __designTimeInteger("#18842.[2].[0].property.[0].[0].arg[1].value.[3].arg[1].value.[0].modifier[1].arg[0].value", fallback: 60), height: __designTimeInteger("#18842.[2].[0].property.[0].[0].arg[1].value.[3].arg[1].value.[0].modifier[1].arg[1].value", fallback: 60), alignment: .leading)
                    .foregroundStyle(.white)
                
                Text(__designTimeString("#18842.[2].[0].property.[0].[0].arg[1].value.[3].arg[1].value.[1].arg[0].value", fallback: "27°C"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

                Text(__designTimeString("#18842.[2].[0].property.[0].[0].arg[1].value.[3].arg[1].value.[2].arg[0].value", fallback: "Extreme Cold"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
            
        }
    
#sourceLocation()
    }
}

extension WeatherApp {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/View/WeatherApp.swift", line: 14)
        ZStack {
//            MARK: - BACKGROUND IMAGE FOR THE APP
            WeatherBackgroundImage()
            
//            MARK: - SEARCH BAR FOR THE CITY
            VStack {
                SearchBar(text: $searchString)
                TodayInformation()
                
                ScrollView (.horizontal) {
                    HStack {
                        ForEach(__designTimeInteger("#18842.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: 0)..<__designTimeInteger("#18842.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].arg[0].value.[1]", fallback: 3)) { _ in
                            ConsequentDaysView()
                                .padding()
                                .background(Color(.gray))
                                .cornerRadius(__designTimeInteger("#18842.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 18))
                        }
                    }
                }
                .padding(.leading, __designTimeInteger("#18842.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[2].modifier[0].arg[1].value", fallback: 30))
                .scrollIndicators(.hidden)
                Spacer()
                
            }
        }
    
#sourceLocation()
    }
}

import struct WeatherApp.WeatherApp
import struct WeatherApp.TodayInformation
import struct WeatherApp.SearchBar
import struct WeatherApp.WeatherBackgroundImage
import struct WeatherApp.ConsequentDaysView
#Preview {
    WeatherApp()
//    ConsequentDaysView()
//        .padding()
//        .background(Color(.gray))
//        .cornerRadius(18)
}



