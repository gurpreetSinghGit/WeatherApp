//
//  Initializer.swift
//  WeatherApp
//
//  Created by NewsBytes on 28/05/24.
//

import SwiftUI

struct CardView: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "abcd"
            self.backgroundColor = .red
        }
        else {
            self.title = "xyz"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    
    HStack {
        CardView(count : 100, fruit : .apple)
        CardView(count: 4, fruit: .orange)
    }
    
}
