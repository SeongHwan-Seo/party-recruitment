//
//  LoginView.swift
//  PartyRecruitment
//
//  Created by seosh on 5/12/22.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack(spacing: 7.0) {
                    Text("이메일")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("이메일을 입력해 주세요.", text: $email)
                        .frame(height: 40)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(9)
                    Text("비밀번호")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    SecureField("비밀번호를 입력해 주세요.", text: $password)
                        .frame(height: 40)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(9)
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "mail")
                            .foregroundColor(.white)
                        Text("이메일로 계속하기")
                            .foregroundColor(.white)
                    })
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.top, 10)
                    
                    Text("or")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                            
                            
                    
                    
                    HStack {
                        
                    } //HStack
                    
                } //VStack
                .padding()

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
