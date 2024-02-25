//
//  InputView.swift
//  Bubble
//
//  Created by Savv Lin on 2/25/24.
//

import SwiftUI

struct InputView: View {
    
    @Binding var text: String
    let placeholder: String
    var isSecureField = false
    
    
    var body: some View {

        
        VStack {
            ZStack {
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 316, height: 46)
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .cornerRadius(10)
                    .padding()
                
                if isSecureField {
                    SecureField(placeholder, text: $text)
                        .font(.system(size: 14))

                } else {
                    TextField(placeholder, text: $text)
                        .font(.system(size: 14))
                    
                }
            }
        }
        
        
    }
}



struct InputView_Preview: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), placeholder: "Email Address")
    }
}
