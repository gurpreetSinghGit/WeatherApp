//
//  CoinsViewModel.swift
//  WeatherApp
//
//  Created by NewsBytes on 29/05/24.
//

import Foundation

class CoinsViewModel : ObservableObject {
    
    @Published var coin = ""
    @Published var price = ""
    @Published var errorMessage: String?
    
    @Published var coins = [Coin]()
    
    private let service = CoinDataService()
    
    init() {
        fetchPrice(coin: "bitcoin")
        fetchCoins()
    }
    
    func fetchCoins() {
        service.fetchCoins { coins in
            DispatchQueue.main.async {
                self.coins = coins
            }
        }
    }
    
    func fetchPrice(coin: String) {
        service.fetchPrice(coin: coin) { priceFromService in
            DispatchQueue.main.async {
                self.price = "$\(priceFromService)"
                self.coin = coin
            }
        }
    }
    
}
