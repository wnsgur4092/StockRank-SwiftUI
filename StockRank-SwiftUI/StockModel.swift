//
//  StockModel.swift
//  StockRank-SwiftUI
//
//  Created by JunHyuk Lim on 31/8/2022.
//

import Foundation

struct StockModel : Hashable, Identifiable{
    var id : UUID = UUID()
    
    let rank : Int
    let imageName : String
    let name : String
    let price : Int
    let diff : Double
    var isFavorite : Bool = false
}

extension StockModel {
    static let list : [StockModel] = [
        StockModel(rank: 1, imageName: "TSLA", name: "Tesla", price: 1_238_631, diff: 0.04),
        StockModel(rank: 2, imageName: "AAPL", name: "Apple", price: 238_631, diff: 1.04),
        StockModel(rank: 3, imageName: "NFLX", name: "Netflix", price: 438_631, diff: -0.04),
        StockModel(rank: 4, imageName: "GOOG", name: "Alphabet A", price: 3_176_631, diff: 0.04),
        StockModel(rank: 5, imageName: "AMZN", name: "Amazon", price: 3_538_631, diff: 0.04),
        StockModel(rank: 6, imageName: "NIKE", name: "Nike", price: 158_631, diff: 0.04),
        StockModel(rank: 7, imageName: "DIS", name: "Disney", price: 138_631, diff: 0.04),
    ]
}
