

//
//  hawkeye_craftsApp.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/22/22.
//
import Firebase
import SwiftUI

@main
struct hawkeye_craftsApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            PreLaunch()
        }
    }
}
