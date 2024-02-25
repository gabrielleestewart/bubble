//
//  LoginView.swift
//  Bubble
//
//  Created by Savv Lin on 2/24/24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Sign Up")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                    
                    // Add form elements here if needed
                    
                    Button(action: {
                        // Handle sign-up action
                    }) {
                        Text("Sign Up")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    .padding()
                }
                .background(Color(red: 0.01, green: 0.17, blue: 0.27))
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 1011, height: 525)
                    .background(
                        Image("bubbles")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 1011, height: 525)
                            .clipped()
                    )
                    .rotationEffect(Angle(degrees: -100))
            }
            .navigationBarTitle("Sign Up", displayMode: .inline)
        }
    }
}
