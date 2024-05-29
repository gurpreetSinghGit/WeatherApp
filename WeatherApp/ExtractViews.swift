//
//  ExtractViews.swift
//  WeatherApp
//
//  Created by NewsBytes on 28/05/24.
//

import SwiftUI

struct ExtractViews: View {
    var body: some View {
       
        ZStack {
            Color(Color.green).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            contentLayer
        }
        
    }
    
    
    var contentLayer: some View {
        HStack {
            ExtractedView(title: "Apples", count: 2, color: Color.red)
            
            ExtractedView(title: "Oranges", count: 13, color: Color.orange)
            
            ExtractedView(title: "Mangos", count: 2, color: Color.yellow)
        }
    }
}

#Preview {
    ExtractViews()
}

struct ExtractedView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
