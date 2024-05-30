//
//  CoinDataService.swift
//  WeatherApp
//
//  Created by NewsBytes on 29/05/24.
//

import Foundation


class CoinDataService

{
    
    func fetchCoinsWithResult(completion: @escaping(Result<[Coin], CoinApiError>) -> Void) {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                completion(.failure(.unknownError(error: error)))
                return
            }
            
            
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(.requestFailure(description: "Request Failed")))
                return
            }
            
            guard httpResponse.statusCode == 200 else {
                completion(.failure(.invalidStatusCode(statusCode: httpResponse.statusCode)))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let coins = try JSONDecoder().decode([Coin].self,  from: data)
                completion(.success(coins))
            } catch {
                print("DEBUG: Failed to decode with error \(error)")
                completion(.failure(.jsonParsingFailure))
            }
           
            
        }.resume()
    }
    
    func fetchCoins(completion: @escaping([Coin]?, Error?) -> Void) {
        let urlString = "https://ap.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                completion(nil, error)
                return
            }
            
            guard let data = data else { return }
            
            guard let coins = try? JSONDecoder().decode([Coin].self,  from: data) else {
                print("Debug: Failed to decode coins")
                return
            }
            
           completion(coins, nil)
            
        }.resume()
    }
    
    func fetchPrice(coin: String, completion: @escaping(Double) -> Void) {
        
        let urlString = "https://api.coingecko.com/api/v3/simple/price?ids=\(coin)&vs_currencies=usd"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    print("Error \(error.localizedDescription)")
    //                self.errorMessage = error.localizedDescription
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
   //                 self.errorMessage = "Bad Http Response"
                    return
                }
                
                guard httpResponse.statusCode == 200 else {
   //                 self.errorMessage = "Failed to fetch with status code \(httpResponse.statusCode)"
                    return
                }
                
                print("DEBUG: Response code is \(httpResponse.statusCode)")
                
                guard let data = data else { return }
                guard let jsonObject = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else { return }
                guard let value = jsonObject["bitcoin"] as? [String: Double] else {
                    print("Failed to parse value")
                    return
                }
                
                guard let price = value["usd"] else { return }
                
                completion(price)
   //             self.coin = coin.capitalized
   //             self.price = "$\(price)"
            }
        }.resume()
    
    }
    
}
