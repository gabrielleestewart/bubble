//
//  LoginView.swift
//  Bubble
//
//  Created by Savv Lin on 2/24/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                
                VStack {
                    // PUT STUFF ON TOP OF BACKGROUND HERE
                    Spacer()
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 342, height: 77)
                        .padding()
                    
                    InputView(text: $email, placeholder: "Email Address")
                        .autocapitalization(.none)
                    
                    InputView(text: $password, placeholder: "Password", isSecureField: true)
                        .autocapitalization(.none)
                    
                    
                    
                    
                    NavigationLink {
                        IdentitiesView()
                    } label: {
                        HStack {
                            
                            Text("Sign In ➜")
                                .font(
                                    Font.custom("SF Pro Text", size: 20)
                                        .weight(.bold)
                                )
                                .frame(width: 280, height: 20)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(red: 0.96, green: 0.69, blue: 0.67))
                                .cornerRadius(10)
                        }
                    }

                    .padding()
                    .navigationBarBackButtonHidden(true)
                    
                    
                    
                    Spacer()
                    
                    //Sign up button
                    NavigationLink {
                        SignupView()
                    } label: {
                        HStack {
                            Text("Don't have an account?")
                            Text("Sign up")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.white)
                        .font(.system(size: 16))
                    }

                    
                    
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
