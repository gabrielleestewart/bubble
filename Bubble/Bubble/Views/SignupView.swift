//
//  SignupView.swift
//  Bubble
//
//  Created by Savv Lin on 2/25/24.
//

import SwiftUI

struct SignupView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var name = ""
    @Environment(\.dismiss) var dismiss
    
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
                    
                    
                    InputView(text: $name, placeholder: "Full Name")
                        .autocapitalization(.none)
                    
                    InputView(text: $email, placeholder: "Email Address")
                        .autocapitalization(.none)
                    
                    
                    InputView(text: $password, placeholder: "Password", isSecureField: true)
                        .autocapitalization(.none)
                    
                    
                    
                    
                    NavigationLink {
                        IdentitiesView()
                    } label: {
                        HStack {
                            
                            Text("Sign Up ➜")
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
                    .navigationBarBackButtonHidden(true)
                    .padding()
                    
                    
                    
                    Spacer()
                    
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Text("Have an account already?")
                            Text("Sign in")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.white)
                        .font(.system(size: 16))
                    
                }
                    //Sign up button


                    
                    
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


struct SignupView_Preview: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}

