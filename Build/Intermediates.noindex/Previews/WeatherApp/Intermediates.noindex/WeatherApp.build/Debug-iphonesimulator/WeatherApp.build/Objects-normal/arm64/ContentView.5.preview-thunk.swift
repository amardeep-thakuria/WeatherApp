@_private(sourceFile: "ContentView.swift") import WeatherApp
import func SwiftUI.__designTimeSelection
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension WeatherBackgroundImage {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/ContentView.swift", line: 52)
        __designTimeSelection(VStack {
            __designTimeSelection(Image(.cold)
                .resizable()
                .frame(width: __designTimeSelection(UIScreen.main.bounds.width, "#5664.[3].[0].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value"), height: __designTimeSelection(UIScreen.main.bounds.height, "#5664.[3].[0].property.[0].[0].arg[0].value.[0].modifier[1].arg[1].value"))
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .opacity(__designTimeFloat("#5664.[3].[0].property.[0].[0].arg[0].value.[0].modifier[4].arg[0].value", fallback: 0.6)), "#5664.[3].[0].property.[0].[0].arg[0].value.[0]")
                
        }
        .padding(), "#5664.[3].[0].property.[0].[0]")
    
#sourceLocation()
    }
}

extension SearchBar {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/ContentView.swift", line: 29)
        __designTimeSelection(HStack {
            __designTimeSelection(TextField(__designTimeString("#5664.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Search your city"), text: __designTimeSelection($text, "#5664.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value"))
                .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#5664.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value"))
                .padding(.vertical, __designTimeInteger("#5664.[2].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 10)), "#5664.[2].[1].property.[0].[0].arg[0].value.[0]")
            if !text.isEmpty {
                __designTimeSelection(Button(action: {
                    text = __designTimeString("#5664.[2].[1].property.[0].[0].arg[0].value.[1].[0].[0].arg[0].value.[0].[0]", fallback: "")
                }) {
                    __designTimeSelection(Image(systemName: __designTimeString("#5664.[2].[1].property.[0].[0].arg[0].value.[1].[0].[0].arg[1].value.[0].arg[0].value", fallback: "xmark.circle.fill"))
                        .foregroundColor(.gray), "#5664.[2].[1].property.[0].[0].arg[0].value.[1].[0].[0].arg[1].value.[0]")
                }, "#5664.[2].[1].property.[0].[0].arg[0].value.[1].[0].[0]")
            }
            __designTimeSelection(Image(systemName: __designTimeString("#5664.[2].[1].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "magnifyingglass")), "#5664.[2].[1].property.[0].[0].arg[0].value.[2]")
        }
        .padding(.horizontal)
        .background(__designTimeSelection(Color(.systemGray6), "#5664.[2].[1].property.[0].[0].modifier[1].arg[0].value"))
        .cornerRadius(__designTimeInteger("#5664.[2].[1].property.[0].[0].modifier[2].arg[0].value", fallback: 10))
        .padding(), "#5664.[2].[1].property.[0].[0]")
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/WeatherApp/WeatherApp/ContentView.swift", line: 14)
        __designTimeSelection(ZStack {
            __designTimeSelection(WeatherBackgroundImage(), "#5664.[1].[1].property.[0].[0].arg[0].value.[0]")
            
            __designTimeSelection(GeometryReader { geometry in
                __designTimeSelection(SearchBar(text: __designTimeSelection($searchString, "#5664.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value"))
                    .frame(height: __designTimeInteger("#5664.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 500)), "#5664.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
            }, "#5664.[1].[1].property.[0].[0].arg[0].value.[1]")
        }, "#5664.[1].[1].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct WeatherApp.ContentView
import struct WeatherApp.SearchBar
import struct WeatherApp.WeatherBackgroundImage
#Preview {
    ContentView()
}



