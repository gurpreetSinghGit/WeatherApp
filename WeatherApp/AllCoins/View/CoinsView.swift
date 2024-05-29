//
//  CoinsView.swift
//  WeatherApp
//
//  Created by NewsBytes on 29/05/24.
//

import SwiftUI

struct CoinsView: View {
    @StateObject var viewModel = CoinsViewModel()
    
    var body: some View {
        
        List {
            ForEach(viewModel.coins) { coin in
                Text(coin.name)
            }
        }
        
    }
}

#Preview {
    CoinsView()
}
