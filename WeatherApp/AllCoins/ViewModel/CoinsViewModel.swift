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
       // fetchPrice(coin: "bitcoin")
      //  fetchCoins()
      //  fetchCoinsWithResult()
        fetchCoinAsync()
    }
    
    func fetchCoins() {
        service.fetchCoins { coins, error in
            DispatchQueue.main.async {
                if let error = error {
                    self.errorMessage = error.localizedDescription
                    return
                }
                
                self.coins = coins ?? []
            }
        }
    }
    
    func fetchCoinAsync() {
        Task {
            self.coins = try await service.fetchCoinsAsync()
        }
    }
    
    func fetchCoinsWithResult() {
        service.fetchCoinsWithResult { [weak self] result in
            switch result {
                case .success(let coins):
                    self?.coins = coins
                
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
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
