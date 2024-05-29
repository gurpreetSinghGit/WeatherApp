//
//  ExtractedFunctions.swift
//  WeatherApp
//
//  Created by NewsBytes on 28/05/24.
//

import SwiftUI

struct ExtractedFunctions: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            contentLayer
        }
    }
    
    var contentLayer: some View  {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Click")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
            
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}


#Preview {
    ExtractedFunctions()
}
