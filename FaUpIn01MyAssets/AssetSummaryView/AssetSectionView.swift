//
//  AssetSectionView.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/25/24.
//

import SwiftUI

struct AssetSectionView: View {
    @ObservedObject var assetSection: Asset
    
    var body: some View {
        VStack(spacing: 20) {
            AssetSectionHeaderView(title: assetSection.type.title)
            ForEach(assetSection.data) { asset in
                HStack {
                    Text(asset.title)
                        .font(.title)
                        .foregroundStyle(Color.secondary)
                    Spacer()
                    Text(asset.amount)
                        .font(.title2)
                        .foregroundStyle(Color.primary)
                }
                Divider()
            }
        }
        .padding()
    }
}

#Preview {
    let asset = Asset(
        id: 0,
        type: .bankAccount,
        data: [
            AssetData(id: 0, title: "Shinhan", amount: "₩5,300,000"),
            AssetData(id: 1, title: "KB", amount: "₩15,300,000"),
            AssetData(id: 2, title: "Kakao Bank", amount: "₩25,300,000")
        ]
    )
    return AssetSectionView(assetSection: asset)
}
