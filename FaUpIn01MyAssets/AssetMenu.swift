//
//  AssetMenu.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/23/24.
//

import Foundation

enum AssetMenu: String, Identifiable, Decodable {
    case creditScore
    case bankAccount
    case investment
    case loan
    case insurance
    case creditCard
    case cash
    case realEstate
    
    var id: String {
        return self.rawValue
    }
    
    var systemImageName: String {
        switch self {
        case .creditScore:
            return "number.circle"
        case .bankAccount:
            return "banknote"
        case .investment:
            return "bitcoinsign.circle"
        case .loan:
            return "hand.wave"
        case .insurance:
            return "lock.shield"
        case .creditCard:
            return "creditcard"
        case .cash:
            return "dollarsign.circle"
        case .realEstate:
            return "house.fill"
        }
    }
    
    var title: String {
        switch self {
        case .creditScore:
            return "credit point"
        case .bankAccount:
            return "account"
        case .investment:
            return "investment"
        case .loan:
            return "loan"
        case .insurance:
            return "insurance"
        case .creditCard:
            return "credit card"
        case .cash:
            return "cash receipt"
        case .realEstate:
            return "real estate"
        }
    }
}
