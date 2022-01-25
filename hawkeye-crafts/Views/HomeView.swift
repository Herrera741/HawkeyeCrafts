//
//  HomeView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/24/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ZStack {
            
            Color.teal
                .ignoresSafeArea()
            
            Text("Home View")
                .font(.system(size: 36, weight: .bold, design: .default))
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
