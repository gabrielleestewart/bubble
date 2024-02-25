//
//  BubbleApp.swift
//  Bubble
//
//  Created by Gabrielle Stewart on 2/24/24.
//


import SwiftUI
import SwiftData
/*import FirebaseCore
      

class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }
}*/


@main
struct BubbleApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            OnBoardingView()
        }
    }
}
