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
                HeaderView()
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
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                })
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .cornerRadius(12)
                .padding(.top, 10)
                
                
                
                
                
                
                VStack(spacing: 10){
                    Button(action: {
                        viewModel.signUpWithGoogle()
                    }, label: {
                        Image("logo_google")
                            
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        Text("구글로 로그인하기")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    })
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1))
                    
                    Button(action: {
                        
                    }, label: {
                        Image("logo_apple")
                            .resizable()
                            .frame(width: 50, height: 50)
                            
                        Text("애플로 로그인하기")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    })
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(12)
                    
                    Button(action: {
                        
                    }, label: {
                        Image("logo_kakao")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("카카오로 로그인하기")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                        
                    })
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
                    .cornerRadius(12)
                } //HStack
                .padding(.top, 5)
                
                
                
                Text("이메일로 가입하기")
                    .underline()
                    .padding(.top, 20)
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
            
            Text("이름")
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("이름을 입력해 주세요.", text: $viewModel.email)
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
                Text("이메일로 가입하기")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            })
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .cornerRadius(12)
            .padding(.top, 10)
        }
        .padding()
    }
}

//LonginHeaderView
struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("#파티모집")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                .foregroundColor(.blue)
                Spacer()
            } // HStack
            HStack {
                Text("오늘은 짜장면으로 \n갑시다\n같이 가실래요?")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                .foregroundColor(.blue)
                Spacer()
            }
            Spacer()
        } //VStack
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
