//
//  ForEach.swift
//  WeatherApp
//
//  Created by NewsBytes on 28/05/24.
//

import SwiftUI

struct ForEachView: View {
    
    let data: [String] = ["Hi", "Hello", "Hey"]
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("item at \(index) is \(data[index])")
            }
            
            ForEach(0..<3) { index in
                Circle()
                    .frame(height: 50)
            }
        }
    }
}

#Preview {
    ForEachView()
}
