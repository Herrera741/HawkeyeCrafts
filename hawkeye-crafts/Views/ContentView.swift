//
//  ContentView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoggedIn = false
    
    var body: some View {
        
        if isLoggedIn {
            BottomTabBar()
        }
        else {
            LoginScreen(isLoggedIn: $isLoggedIn)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
