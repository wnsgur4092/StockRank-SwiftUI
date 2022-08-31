//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by JunHyuk Lim on 1/9/2022.
//

import Foundation

final class StockRankViewModel : ObservableObject {
    @Published var models : [StockModel] = StockModel.list
    
    var numOfFavorites : Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
