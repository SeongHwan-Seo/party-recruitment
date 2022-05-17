//
//  LoginViewModel.swift
//  PartyRecruitment
//
//  Created by seosh on 5/17/22.
//

import Foundation
import SwiftUI
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var isValid = false
    
    func withEmailLogin() {
        //Firebase EmailLogin
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if authResult != nil {
                print("성공")
            } else {
                print(error)
            }
            
        }
        //print(email, password)
    }
}


