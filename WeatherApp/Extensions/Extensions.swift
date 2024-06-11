//
//  Extensions.swift
//  WeatherApp
//
//  Created by Amardeep on 11/06/24.
//

import Foundation
import SwiftUI

extension Date {
    func formatted(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}

extension Double {
    func formatToOneDecimal() -> String {
        return String(format: "%.1f", self)
    }
}
