//
//  HomeView.swift
//  LoginFigmaPrototipe
//
//  Created by Marco Alonso Rodriguez on 02/01/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("Image6")
                .resizable()
                .frame(width: 352, height: 352)
            
            Text("Mudah dalam bertransaksi, dengan  Jumot")
                .font(.title3)
                .multilineTextAlignment(.center)
                .fontWeight(.bold)
            
            Text("Bisnis jual beli menjangkau ke seluruh wilayah di Indonesia")
                .font(.subheadline)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Login")
                    .modifier(ButtonBlueModifier())
            })
        }
    }
}

#Preview {
    HomeView()
}
