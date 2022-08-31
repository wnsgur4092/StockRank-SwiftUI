//
//  StockRankRow.swift
//  StockRank-SwiftUI
//
//  Created by JunHyuk Lim on 31/8/2022.
//

import SwiftUI

struct StockRankRow: View {
    
    @Binding var stock : StockModel
    
    var body: some View {
        HStack{
            Text("\(stock.rank)")
                .font(.system(size: 16, weight: .bold, design: .default))
                .frame(width:30)
                .foregroundColor(.blue)
            Image("\(stock.imageName)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 5){
                Text("\(stock.name)")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                
                HStack{
                    Text("\(stock.price)")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Text("\(stock.diff, specifier: "%.2f")%")
                        .font(.system(size: 12))
                        .foregroundColor(stock.diff > 0 ? .red : .blue)
                }
            }
            Spacer()
            Image(systemName:"heart.fill")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(stock.isFavorite ? .white : .gray)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        
        
    }
}


struct StockRankRow_Previews: PreviewProvider {
    static var previews: some View {
        StockRankRow(stock: .constant(StockModel.list[0]))
            .previewLayout(.fixed(width: 390, height: 80))
    }
}

