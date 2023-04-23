//
//  HomeView.swift
//  SwiftCoin
//
//  Created by 유인호 on 2023/04/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                // top movers view
                TopMoversView()
                Divider()
                
                // all coin view
                AllCoinView()
                
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
