//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Soham Kayal on 15/06/2024.
//  Copyright © 2024 Soham Kayal. All rights reserved.
//

import Foundation

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "YOUR_API_KEY_HERE"
    
    func getCoinPrice(for currency: String) {
        print("Inside coinmanager: \(currency)");
    }
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    
}
