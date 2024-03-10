//
//  ContentView.swift
//  WeatherApp_onSUI
//
//  Created by Makarov_Maxim on 09.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackGroundView(topColor: .white, middleColor: .blue, bottomColor: .red)
            VStack {
                cityTextView(cityName: "Borovsky")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 17)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 17)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.bolt.rain.fill", temperature: 17)
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.rain.fill", temperature: 17)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 17)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.moon.fill", temperature: 17)
                }
                
                Spacer()
                
                Button {
                    print("Tapped")
                } label: {
                    Text ("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
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
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackGroundView: View {
    
    var topColor: Color
    var middleColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, middleColor, bottomColor]),startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct cityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.blue)
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
