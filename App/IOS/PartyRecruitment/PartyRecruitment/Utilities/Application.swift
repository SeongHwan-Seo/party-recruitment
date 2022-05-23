//
//  Application.swift
//  PartyRecruitment
//
//  Created by seosh on 5/23/22.
//

import SwiftUI

final class ApplicationUtility {
    static var rootViewContriller: UIViewController {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .init()
        }
        
        guard let root = screen.windows.first?.rootViewController else {
            return .init()
        }
        
        return root
    }
}
