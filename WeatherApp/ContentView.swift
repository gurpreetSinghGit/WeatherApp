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
           
            BackgroundView(topColor: Color.blue,
                           bottomColor: Color("lightBlue"))
            
            VStack {
                CityTextView(cityName: "Cupertino, CA Hello")
                
                MainWeatherStatusView(imageName: "cloud.sun.fill",
                                      temprature: 76)
                    
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temprature: 11)
                    
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temprature: 44)
                    
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temprature: 65)
                    
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temprature: 15)
                    
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temprature: 13)
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label : {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
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

struct BackgroundView : View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}


struct CityTextView: View {
    
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
    var temprature: Int
    
    var body: some View {
        
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temprature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}

