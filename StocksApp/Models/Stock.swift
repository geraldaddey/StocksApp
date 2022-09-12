//
//  Stock.swift
//  StocksApp
//
//  Created by Quansah on 12/09/2022.
//

import Foundation


struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
}
