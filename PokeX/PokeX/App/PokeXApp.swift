//
//  PokeXApp.swift
//  PokeX
//
//  Created by MIKHAIL ZHACHKO on 18.04.24.
//

import SwiftUI

@main
struct PokeXApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                MainView()
            }
            
        }
    }
}
