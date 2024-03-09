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
            LinearGradient(gradient: Gradient(colors: [.white, .blue, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Borovsky")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.blue)
                    .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
