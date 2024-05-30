//
//  ContentView.swift
//  WeatherApp
//
//  Created by NewsBytes on 27/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Cupertino, CA Hello")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "sun.max.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("77°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 40)
                    
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temprature: 11)
                    
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temprature: 44)
                    
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temprature: 65)
                    
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temprature: 15)
                    
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temprature: 13)
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
    var temprature: Int
    
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium,
                              design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temprature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
