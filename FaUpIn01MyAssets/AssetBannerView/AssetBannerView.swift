//
//  AssetBannerView.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/25/24.
//

import SwiftUI

struct AssetBannerView: View {
    let bannerList: [AssetBanner] = [
        AssetBanner(title: "Notice", description: "Please check the added notice", backgroundColor: .red),
        AssetBanner(title: "Weekend event", description: "Don't miss out on weekend event", backgroundColor: .yellow),
        AssetBanner(title: "Surprise event", description: "Don't be surprised by the huge event", backgroundColor: .blue),
        AssetBanner(title: "Autumn promotions", description: "It's fall...🍂", backgroundColor: .brown)
    ]
    @State private var currentPage = 0
    
    var body: some View {
        let bannerCards = bannerList.map { BannerCard(banner: $0) }
        
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: bannerCards, currentPage: $currentPage)
            PageControl(numberOfPages: bannerList.count, currentPage: $currentPage)
                .frame(width: CGFloat(bannerCards.count * 10))
                .padding(.trailing)
        }
    }
}

#Preview {
    AssetBannerView()
        .aspectRatio(5/2, contentMode: .fit)
}
