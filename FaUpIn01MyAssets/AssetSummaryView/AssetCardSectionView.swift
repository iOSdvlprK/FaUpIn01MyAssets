//
//  AssetCardSectionView.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/27/24.
//

import SwiftUI

struct AssetCardSectionView: View {
    @State private var selectedTab = 1
    @ObservedObject var asset: Asset
    
    var assetData: [AssetData] {
        return asset.data
    }
    
    var body: some View {
        VStack {
            AssetSectionHeaderView(title: asset.type.title)
            TabMenuView(
                tabs: ["prev month", "this month", "next month"],
                selectedTab: $selectedTab,
                updated: .constant(.nextMonth(amount: "₩10,000"))
            )
            TabView(
                selection: $selectedTab,
                content:  {
                    ForEach(0...2, id: \.self) { i in
                        VStack {
                            ForEach(assetData) { data in
                                HStack {
                                    Text(data.title)
                                        .font(.title)
                                        .foregroundStyle(Color.secondary)
                                    Spacer()
                                    Text(data.creditCardAmounts![i].amount)
                                        .font(.title2)
                                        .foregroundStyle(Color.primary)
                                }
                                Divider()
                            }
                        }
                        .tag(i)
                    }
                }
            )
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        .padding()
    }
}

#Preview {
    let asset = AssetSummaryData().assets[5]
    
    return AssetCardSectionView(asset: asset)
}
