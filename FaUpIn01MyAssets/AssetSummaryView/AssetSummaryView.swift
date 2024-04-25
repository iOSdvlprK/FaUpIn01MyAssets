//
//  AssetSummaryView.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/25/24.
//

import SwiftUI

struct AssetSummaryView: View {
    @EnvironmentObject var assetData: AssetSummaryData
    
    var assets: [Asset] {
        return assetData.assets
    }
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(assets) { asset in
                AssetSectionView(assetSection: asset)
            }
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    AssetSummaryView()
        .environmentObject(AssetSummaryData())
        .background(Color.gray.opacity(0.2))
}
