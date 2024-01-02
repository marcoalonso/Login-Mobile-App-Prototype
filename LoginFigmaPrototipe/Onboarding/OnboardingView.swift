//
//  OnboardingView.swift
//  LoginFigmaPrototipe
//
//  Created by Marco Alonso Rodriguez on 02/01/24.
// Figma : https://www.figma.com/file/JTEIkalSYLQCYcq0RskjOW/Login-Mobile-App-(Community)?type=design&node-id=1-2&mode=design&t=q3kFFStAN0PxlJsy-0

import SwiftUI

struct OnboardingView: View {
    private let slidesOnboarding = [
        OnboardingSlide(image: "Image1", title: "Mudah dalam bertransaksi, dengan  Jumot", description: "Bisnis jual beli menjangkau ke seluruh wilayah di Indonesia"),
        OnboardingSlide(image: "Image2", title: "Mudah dalam bertransaksi, dengan  Jumot", description: "Bisnis jual beli menjangkau ke seluruh wilayah di Indonesia"),
        OnboardingSlide(image: "Image3", title: "Mudah dalam bertransaksi, dengan  Jumot", description: "Bisnis jual beli menjangkau ke seluruh wilayah di Indonesia")
    ]
    @State private var currentSlide = 0
    @State private var goLogin: Bool = false
    
    var body: some View {
        NavigationView {
            TabView(selection: $currentSlide) {
                ForEach(0..<slidesOnboarding.count) { slide in
                    VStack(alignment: .center, spacing: 32) {
                        Image(slidesOnboarding[slide].image)
                            .resizable()
                        .frame(width: 352, height: 352)
                        
                        Text("Mudah dalam bertransaksi, dengan  Jumot")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .fontWeight(.bold)
                        
                        Text("Bisnis jual beli menjangkau ke seluruh wilayah di Indonesia")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        
                        //Indicator and Button
                        HStack(alignment: .center) {
                            Spacer()
                            
                            HStack(spacing: 3) {
                                ForEach(0..<slidesOnboarding.count) { slide in
                                    if slide == currentSlide {
                                        Rectangle()
                                            .frame(width: 20, height: 10)
                                            .foregroundColor(.purple)
                                    } else {
                                        Rectangle()
                                            .frame(width: 20, height: 10)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                            
                            
                            Spacer()
                            
                            //Button Next
                            Button(action: {
                                if self.currentSlide < slidesOnboarding.count - 1 {
                                    self.currentSlide += 1
                                } else {
                                    goLogin = true
                                }
                                
                            }, label: {
                                if (currentSlide < slidesOnboarding.count - 1) {
                                    Text("Next")
                                } else {
                                    NavigationLink("Get started", destination: LoginView())
                                }
                            })
                            
                            
                        }
                        .padding(.trailing, 50)
                    }// VStack
                    .tag(slide)
                }//ForEach
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        
        
        
        
    }
}

#Preview {
    OnboardingView()
}
