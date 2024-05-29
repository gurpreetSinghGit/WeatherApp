//
//  SwiftUIViewState.swift
//  WeatherApp
//
//  Created by NewsBytes on 28/05/24.
//

import SwiftUI

struct SwiftUIViewState: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20, content: {
                Text("Title")
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .purple
                        myTitle = "Button one was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .pink
                        myTitle = "Button two was pressed"
                        count -= 1
                    }
                }
            })
        }
    }
}

#Preview {
    SwiftUIViewState()
}
