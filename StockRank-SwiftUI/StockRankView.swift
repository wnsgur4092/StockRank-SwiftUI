//
//  StockRankView.swift
//  StockRank-SwiftUI
//
//  Created by JunHyuk Lim on 31/8/2022.
//

import SwiftUI

struct StockRankView: View {
    
//    @State var list = StockModel.list
    @StateObject var vm = StockRankViewModel()
    
    // Taks : viewModel
    // -list
    // - favorite
    
    var body: some View {
        
        NavigationView{
            List($vm.models) {$item in
                
                ZStack{
                    NavigationLink{
                        StockDetailView(viewModel: vm, stock:  $item)
                    } label : {
                        EmptyView()
                    }
                    StockRankRow(stock: $item)
                }
                .listRowInsets(EdgeInsets())
                .frame(height: 80)
                
                
            }
            .listStyle(.plain)
            .navigationTitle("Stock Rank")

        }
    }
}

struct StockRankView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
         .preferredColorScheme(.dark)
    }
}
