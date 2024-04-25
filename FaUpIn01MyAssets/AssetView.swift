//
//  AssetView.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/23/24.
//

import SwiftUI

struct AssetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    Spacer()
                    AssetMenuGridView()
                    AssetBannerView()
                        .aspectRatio(5/2, contentMode: .fit)
                    AssetSummaryView()
                        .environmentObject(AssetSummaryData())
                }
            }
            .background(Color.gray.opacity(0.2))
            .navigationBarWithButtonStyle("My Assets")
        }
    }
}

#Preview {
    AssetView()
}
