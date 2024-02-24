//
//  LoginView.swift
//  Bubble
//
//  Created by Savv Lin on 2/24/24.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Bubble")
        }
        .padding()
    }
}

#Preview {
    LoginView()
}

