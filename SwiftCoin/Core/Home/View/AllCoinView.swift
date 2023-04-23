//
//  AllCoinView.swift
//  SwiftCoin
//
//  Created by 유인호 on 2023/04/23.
//

import SwiftUI

struct AllCoinView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack{
                Text("Coin")
                    
                Spacer()
                Text("Price")
                    
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    ForEach(viewModel.coins){ coin in
                        CoinRowView(coin: coin)
                        
                    }
                    
                }
            }
        }
    }
}

//struct AllCoinView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinView()
//    }
//}
