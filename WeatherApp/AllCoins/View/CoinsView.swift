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
                HStack {
                    Text("\(coin.marketCapRank)")
                        .foregroundColor(.gray)
                    
                    VStack (alignment: .leading) {
                        Text(coin.name)
                            .fontWeight(.semibold)
                        
                        Text(coin.symbol)
                    }
                }
                .font(.footnote)
            }
        }
        
    }
}

#Preview {
    CoinsView()
}
