//
//  WeatherButton.swift
//  WeatherApp_onSUI
//
//  Created by Makarov_Maxim on 10.03.2024.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backGroundColor: Color
    
    var body: some View {
        Text (title)
            .frame(width: 280, height: 50)
            .background(backGroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
