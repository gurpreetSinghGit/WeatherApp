//
//  SwiftUIViewButtons.swift
//  WeatherApp
//
//  Created by NewsBytes on 28/05/24.
//

import SwiftUI

struct SwiftUIViewButtons: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
        }
        
        Button(action: {
            self.title = "Button was pressed"
        }, label: {
            Text("Save".uppercased())
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(
                    Color.blue
                        .cornerRadius(10)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                )
                
        })
        
        Button(action: {
            self.title = "Button #3"
        }, label: {
            Circle()
                .fill(Color.yellow)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100,
                       alignment: .center)
                
        })
        
        Button(action: {
            
        }, label: {
            Text("Finish".uppercased())
                .font(.caption)
                .bold()
                .foregroundColor(.gray)
                .padding()
                .padding(.horizontal, 10)
                .background(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 2)
                )
        })
    }
}

#Preview {
    SwiftUIViewButtons()
}
