//
//  LoginView.swift
//  LoginFigmaPrototipe
//
//  Created by Marco Alonso Rodriguez on 02/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showModal = false
    
    var body: some View {
        ScrollView {
            VStack {
                Image("Image5")
                    .resizable()
                    .frame(width: 352, height: 352)
                
                
                TextField("Email", text: $email)
                    .modifier(OnboardingTextViewModifier())
                
                SecureField("Password", text: $password)
                    .autocapitalization(.none)
                    .modifier(OnboardingTextViewModifier())
                
                HStack {
                    Spacer()
                    Text("Lupa password?")
                        .font(.footnote)
                        .padding(.trailing, 32)
                        .padding(.bottom)
                }
                
                Button(action: {
                    showModal = true
                }, label: {
                    Text("Login")
                        .modifier(ButtonBlueModifier())
                })
                
                HStack {
                    Rectangle()
                        .frame(width: 80, height: 2)
                    
                    Text("Atau daftar menggunakan")
                        .font(.footnote)
                    
                    Rectangle()
                        .frame(width: 80, height: 2)
                }
                .padding(.vertical, 32)
                .foregroundColor(.gray)
                
                // Button Google
                Button(action: {
                    
                }, label: {
                    HStack {
                        Image("google")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .padding(.leading, 16)
                            
                        Spacer()
                        
                        Text("Google")
                            .font(.caption)
                            .padding(.leading, -16)
                        
                        Spacer()
                    }
                    .frame(width: 352, height: 48)
                    .foregroundColor(.red)
                    .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.red, lineWidth: 2)
                    )
                        
                })
                
                // Button Facebook
                Button(action: {
                    
                }, label: {
                    Image("facebook")
                        .resizable()
                        .frame(width: 352, height: 48)
                })
                
                HStack(spacing: 2) {
                    Text("Sudah punya akun? silahkan masuk")
                    
                    Text("masuk")
                        .underline()
                }
                
                .navigationBarBackButtonHidden(true)
            }
            .fullScreenCover(isPresented: $showModal, content: {
                HomeView()
            })
        }
    }
}

#Preview {
    LoginView()
}
