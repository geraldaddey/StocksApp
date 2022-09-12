//
//  StockListViewModel.swift
//  StocksApp
//
//  Created by Quansah on 12/09/2022.
//

import Foundation



@MainActor
class StockListViewModel: ObservableObject {
    
    @Published var stocks: [StockViewModel] = []
    
    func populateStocks() async {
        do {
        let  stocks = try await Webservice().getStocks(url:Constants.Urls.latestStocks)
            self.stocks = stocks.map(StockViewModel.init)
        } catch   {
            print(error)
        }
    }
}

struct StockViewModel {
    
    private var stock:Stock
    
    init(stock:Stock){
        self.stock = stock
    }
    
    var symbol: String {
        stock.symbol
    }
    
    var price: Double {
        stock.price
    }
    
    var description: String {
        stock.description
    }
}
