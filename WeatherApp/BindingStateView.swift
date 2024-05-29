//
//  BindingStateView.swift
//  WeatherApp
//
//  Created by NewsBytes on 28/05/24.
//

import SwiftUI

struct BindingStateView: View {

    @State var backgroundColor: Color = Color.white
    @State var isGreen = true
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ButtonView(backgroundColor: $backgroundColor)
            
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
  
    var body: some View {
        
        
        Button(action: {
            backgroundColor = Color.red
        }, label: {
            Text("This is button")
        })
        
    }
}

#Preview {
    BindingStateView()
}
