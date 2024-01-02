//
//  ButtonBlueModifier.swift
//  LoginFigmaPrototipe
//
//  Created by Marco Alonso Rodriguez on 02/01/24.
//

import SwiftUI

struct ButtonBlueModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .frame(width: 352, height: 48)
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(12)
    }
}
