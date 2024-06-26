//
//  AssetSummaryData.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/25/24.
//

import SwiftUI

class AssetSummaryData: ObservableObject {
    @Published var assets: [Asset] = load("assets.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Cannot find " + filename)
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Cannot find " + filename)
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Cannot parse \(filename) into \(T.self)")
    }
}
