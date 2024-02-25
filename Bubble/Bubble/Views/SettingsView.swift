//
//  SettingsView.swift
//  Bubble
//
//  Created by Kennedy Cameron on 2/25/24.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Account")) {
                    Text("User Profile")}
                
                Section(header: Text("Log in")) {
                    Text("Log out")}}
            .navigationTitle("Settings")}
        }
    }


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
