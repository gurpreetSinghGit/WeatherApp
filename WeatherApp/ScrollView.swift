//
//  ScrollView.swift
//  WeatherApp
//
//  Created by NewsBytes on 28/05/24.
//

import SwiftUI

struct ScrollViewCustom: View {
    var body: some View {
    
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        LazyHStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewCustom()
}
