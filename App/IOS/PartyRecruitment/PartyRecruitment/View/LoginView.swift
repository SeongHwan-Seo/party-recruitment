//
//  LoginView.swift
//  PartyRecruitment
//
//  Created by seosh on 5/12/22.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    @State private var showingSheet = false
    var body: some View {
        VStack(spacing: 7.0) {
            Text("이메일")
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("이메일을 입력해 주세요.", text: $viewModel.email)
                .frame(height: 40)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .cornerRadius(9)
            Text("비밀번호")
                .frame(maxWidth: .infinity, alignment: .leading)
            SecureField("비밀번호를 입력해 주세요.", text: $viewModel.password)
                .frame(height: 40)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .cornerRadius(9)
            
            Button(action: {
                viewModel.withEmailLogin()
                
            }, label: {
                Image(systemName: "mail")
                    .foregroundColor(.white)
                Text("이메일로 로그인하기")
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
            
            
            
            
            HStack(spacing: 40){
                Button(action: {
                    
                }, label: {
                    Image("logo_google")
                        .resizable()
                        .frame(width: 50, height: 50)
                })
                .frame(width: 60, height: 60)
                .background(Circle().stroke(.gray, lineWidth: 1))
                
                Button(action: {
                    
                }, label: {
                    Image("logo_apple")
                        .resizable()
                        .frame(width: 50, height: 50)
                })
                .frame(width: 60, height: 60)
                .background(.black)
                .clipShape(Circle())
                
                Button(action: {
                    
                }, label: {
                    Image("logo_kakao")
                        .resizable()
                        .frame(width: 50, height: 50)
                })
                .frame(width: 60, height: 60)
                .background(.yellow)
                .clipShape(Circle())
            } //HStack
            
            
            Text("이메일로 가입하기")
                .underline()
                .padding(.top, 50)
                .foregroundColor(.gray)
                .onTapGesture {
                    showingSheet.toggle()
                }
                .sheet(isPresented: $showingSheet) {
                    SheetView()
                }
            
        } //VStack
        .padding()
        
    }
}


//Sheet View
struct SheetView: View{
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        VStack(spacing: 7.0) {
            Text("이메일")
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("이메일을 입력해 주세요.", text: $viewModel.email)
                .frame(height: 40)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .cornerRadius(9)
            Text("비밀번호")
                .frame(maxWidth: .infinity, alignment: .leading)
            SecureField("비밀번호를 입력해 주세요.", text: $viewModel.password)
                .frame(height: 40)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .cornerRadius(9)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
