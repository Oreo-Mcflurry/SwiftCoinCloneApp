//
//  HomeView.swift
//  SwiftCoin
//
//  Created by 유인호 on 2023/04/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                // top movers view
                TopMoversView(viewModel: HomeViewModel())
                Divider()
                
                // all coin view
                AllCoinView(viewModel: viewModel)
                
            }
            .navigationTitle("Live Price")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
