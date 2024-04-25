//
//  AssetSectionHeaderView.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/25/24.
//

import SwiftUI

struct AssetSectionHeaderView: View {
    let title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(Color.accentColor)
            Divider()
                .frame(height: 2)
                .background(Color.primary)
                .foregroundStyle(Color.accentColor)
        }
    }
}

#Preview {
    AssetSectionHeaderView(title: "Bank")
}
