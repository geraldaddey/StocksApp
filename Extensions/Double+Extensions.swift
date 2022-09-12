//
//  Double+Extensions.swift
//  StocksApp
//
//  Created by Quansah on 12/09/2022.
//

import Foundation


extension Double {
    func formatAsCurrency()-> String{
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 2
        return formatter.string(from: NSNumber(value:self )) ?? "N/A"
        
    }
    
    
    
}
