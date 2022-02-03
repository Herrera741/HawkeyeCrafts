//
//  HomeScreen.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/30/22.
//
import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack {
            
            Color.yellow
            
            Text("Home Screen")
                .font(.system(size: 36, weight: .bold, design: .default))
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
