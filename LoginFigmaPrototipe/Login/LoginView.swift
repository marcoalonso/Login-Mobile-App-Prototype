//
//  LoginView.swift
//  LoginFigmaPrototipe
//
//  Created by Marco Alonso Rodriguez on 02/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                Image("Image4")
                    .resizable()
                    .frame(width: 352, height: 352)
                
                TextField("Name", text: $name)
                    .modifier(OnboardingTextViewModifier())
                
                TextField("Email", text: $name)
                    .modifier(OnboardingTextViewModifier())
                
                TextField("Username", text: $name)
                    .modifier(OnboardingTextViewModifier())
                
                SecureField("Password", text: $name)
                    .autocapitalization(.none)
                    .modifier(OnboardingTextViewModifier())
                
                Button(action: {
                    
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
        }
    }
}

#Preview {
    LoginView()
}
