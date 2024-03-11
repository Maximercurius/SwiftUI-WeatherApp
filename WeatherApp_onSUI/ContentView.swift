//
//  ContentView.swift
//  WeatherApp_onSUI
//
//  Created by Makarov_Maxim on 09.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackGroundView(isNight: isNight)
            VStack {
                cityTextView(cityName: "Borovsky")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 17)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 17)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.bolt.rain.fill", temperature: 17)
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.rain.fill", temperature: 17)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 17)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.moon.fill", temperature: 17)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backGroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text (dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
            
            //Additional tuning ro SFSymbols
//                .foregroundColor(.pink)
//                .foregroundStyle(.pink, .orange, .green)
            
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackGroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        
        //Super customisation for Gradient
        LinearGradient(gradient: Gradient (colors: [isNight ? .black : .white, isNight ? .gray : .blue, isNight ? .yellow : .red]),startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
        
        //Simple tuning for Gradient
//        ContainerRelativeShape()
//            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
    }
}

struct cityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}


