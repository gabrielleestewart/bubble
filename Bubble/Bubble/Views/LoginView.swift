//
//  LoginView.swift
//  Bubble
//
//  Created by Savv Lin on 2/24/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                
                VStack {
                    // PUT STUFF ON TOP OF BACKGROUND HERE
                    
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 342, height: 77)
                        .padding()
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 316, height: 46)
                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                            .cornerRadius(10)
                            .padding()
                    }
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 316, height: 46)
                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                            .cornerRadius(10)
                    }
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 316, height: 46)
                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                            .cornerRadius(10)
                            .padding()
                    }
                    
                    
                    
                    Button(action: {
                        // Handle sign-up action
                    }) {
                        Text("Sign Up")
                            .font(.headline)
                            .frame(width: 280, height: 20)

                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 0.96, green: 0.69, blue: 0.67))
                            .cornerRadius(10)
                    }
                    .padding()

                    
                    
                }
                .zIndex(1.0)
                
                ZStack {
                    
                }
                .containerRelativeFrame([.horizontal, .vertical])
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
        }
    }
}



struct LoginView_Preview: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
