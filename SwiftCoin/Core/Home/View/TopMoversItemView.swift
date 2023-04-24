//
//  TopMoversItemView.swift
//  SwiftCoin
//
//  Created by 유인호 on 2023/04/23.
//

import SwiftUI
import Kingfisher       // GitHub에서 패키지를 다운받음
// https://github.com/onevcat/Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            // image
            KFImage(URL(string: coin.image))    // URL이미지를 쉽게 띄울수 있음
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            // coin info
            HStack(spacing: 2) {
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text(coin.currentPrice.toCurrency()) // Extension을 이용해서 출력의 결과를 바꿨다.
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            // coin percent change
            
            Text("\(coin.priceChangePercentage24H >= 0.00 ? "+" : "")" + "\(coin.priceChangePercentage24H.toPercent())")
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H >= 0.00 ? .red : .blue)
        }
        .frame(width: 140, height: 140)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        }
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
//}
