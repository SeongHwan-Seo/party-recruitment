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
        //Firebase SignInEmailLogin
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            if authResult != nil {
                print("로그인 성공!!")
            } else {
                print("error: \(error!)")
                guard let errorCode = AuthErrorCode(rawValue: error!._code) else { return }
                switch errorCode.rawValue {
                case 17009:
                    print("비밀번호를 확인해 주세요.")
                case 17011:
                    print("등록된 이메일이 아닙니다.")
                case 17008:
                    print("이메일 형식이 아닙니다.")
                default:
                    print("고객센터에 문의 하시기 바랍니다.")
                }
            }
            
        }
        
        
        //print(email, password)
    }
    
    func createUserWithEmail() {
        //Firebase CreateUser
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if authResult != nil {
                print("성공")
            } else {
                guard let errorCode = AuthErrorCode(rawValue: error!._code) else { return }
                switch errorCode.rawValue {
                case 17007:
                    print("이미 등록된 이메일 입니다.")
                case 17008:
                    print("이메일 형식이 아닙니다.")
                case 17026:
                    print("비밀번호는 6자 이상 이여야 합니다.")
                default:
                    print("고객센터에 문의 하시기 바랍니다.")
                }
                
                
            }
            
        }
    }
}


