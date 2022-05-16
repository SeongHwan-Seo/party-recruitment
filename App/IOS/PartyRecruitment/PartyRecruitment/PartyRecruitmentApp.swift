//
//  PartyRecruitmentApp.swift
//  PartyRecruitment
//
//  Created by seosh on 5/15/22.
//

import SwiftUI
import Firebase

@main
struct PartyRecruitmentApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
