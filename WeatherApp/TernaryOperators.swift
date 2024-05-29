//
//  TernaryOperators.swift
//  WeatherApp
//
//  Created by NewsBytes on 29/05/24.
//

import SwiftUI

struct TernaryOperators: View {

    @State var isStartingState: Bool = false

    var body: some View {
        
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: isStartingState ? 250 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 100 : 200,
                       height: isStartingState ? 100 : 200)
           
        }
    }
}

#Preview {
    TernaryOperators()
}
