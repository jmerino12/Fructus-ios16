//
//  FructusApp.swift
//  Fructus
//
//  Created by Jonathan Eduardo Meriño Bolívar - Ceiba Software on 7/03/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else {
                ContentView()
            }
            
        }
    }
}
