//
//  ProfileViews.swift
//  Bubble
//
//  Created by Savv Lin on 2/25/24.
//

import SwiftUI

struct ProfileViews: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text(User.MOCK_USER.initials)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 4) {
                        Text(User.MOCK_USER.name)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        
                        Text(User.MOCK_USER.email)
                            .font(.footnote)
                            .foregroundColor(Color("coral"))
                    }
                }
            }
            
            Section("General") {
                HStack {
                    SettingRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }

            
            
            
            Section("Account") {
                Button {
                    print("Delete account...")
                } label: {
                    SettingRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                }
                    
                Button {
                    print("Sign out...")
                } label: {
                    SettingRowView(imageName: "xmark.circle.fill", title: "Delete Account", tintColor: .red)
                }
            }
        }
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViews()
    }
}
