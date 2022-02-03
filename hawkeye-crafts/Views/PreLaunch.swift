//
//  PreLaunch.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/31/22.
//
import SwiftUI

struct PreLaunch: View {
    
    @State var showAnimation = true
    
    var body: some View {
        
        if showAnimation {
            SplashScreen(showAnimation: $showAnimation)
        }
        else {
            ContentView()
        }
        
    }
}

struct PreLaunch_Previews: PreviewProvider {
    static var previews: some View {
        PreLaunch()
    }
}
