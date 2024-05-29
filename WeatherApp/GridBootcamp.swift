//
//  GridBootcamp.swift
//  WeatherApp
//
//  Created by NewsBytes on 28/05/24.
//

import SwiftUI

struct GridBootcamp: View {
    
    let itemsNo : Int
    
    var body: some View {
        
        let columns: [GridItem] = [
            GridItem(.flexible(),
                    spacing: nil,
                    alignment: nil),
            GridItem(.flexible(),
                    spacing: nil,
                    alignment: nil),
            GridItem(.flexible(),
                    spacing: nil,
                    alignment: nil)
        ]
        
        
        LazyVGrid(columns: columns) {
            ForEach(0..<itemsNo) { index in
                Rectangle()
                    .frame(height: 100)
            }
        }
        
    }
}

#Preview {
    GridBootcamp(itemsNo: 24)
}
