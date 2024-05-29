//
//  ConditionalUI.swift
//  WeatherApp
//
//  Created by NewsBytes on 29/05/24.
//

import SwiftUI

struct ConditionalUI: View {
    
    @State var showCircle: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            Button("Circle Button \(showCircle.description)"){
                showCircle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
           
            Spacer()
        }
        
    }
}

#Preview {
    ConditionalUI()
}
