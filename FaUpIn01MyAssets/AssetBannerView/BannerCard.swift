//
//  BannerCard.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/24/24.
//

import SwiftUI

struct BannerCard: View {
    var banner: AssetBanner
    
    var body: some View {
        Color(banner.backgroundColor)
            .overlay {
                VStack {
                    Text(banner.title)
                        .font(.title)
                    Text(banner.description)
                        .font(.subheadline)
                }
            }
    }
}

#Preview {
    let banner0 = AssetBanner(title: "Notice", description: "Check the added notice", backgroundColor: .red)
    return BannerCard(banner: banner0)
}
