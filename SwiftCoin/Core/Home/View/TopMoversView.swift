//
//  TopMoversView.swift
//  SwiftCoin
//
//  Created by 유인호 on 2023/04/23.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    // SwiftUI는 상태가 변경되면 뷰를 처음부터 다시 만들어서 그리는 동작이 있지만, @StateObject를 사용하면 뷰를 다시 만들지 않고 항상 동일한 뷰가 사용
    // HomeViewModel은 코인의 API
    // 상태 변경이 있을땐 @ObjervedObject는 뷰를 다시 생성해서 그리지만, @StateObject는 뷰를 다시 생성하지 않고 항상 동일한 뷰가 사용 (효율)
    // 기본적으로 @StateObject를 사용하되, 해당 프로퍼티를 subview에게도 주입시켜야 한다면, @ObservedObject로 선언하여 사용할것
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal) {
                HStack(spacing: 12) {
                    ForEach(viewModel.topMovingCoins){ coin in
                        TopMoversItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView(viewModel: HomeViewModel())
    }
}
