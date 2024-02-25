//
//  BubbleApp.swift
//  Bubble
//
//  Created by Gabrielle Stewart on 2/24/24.
//


import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


@main
struct BubbleApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            OnBoardingView()
        }
    }
}
