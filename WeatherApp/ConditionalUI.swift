//
//  ConditionalUI.swift
//  WeatherApp
//
//  Created by NewsBytes on 29/05/24.
//

import SwiftUI

struct ConditionalUI: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    @State var isLoading: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Button("Is Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
        }
        
    }
}

#Preview {
    ConditionalUI()
}
