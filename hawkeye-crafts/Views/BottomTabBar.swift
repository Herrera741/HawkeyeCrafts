//
//  BottomTabBar.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 2/2/22.
//

import SwiftUI

struct BottomTabBar: View {
    
    
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            Color(.systemGray3)

            TabView {
                HomeScreen()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
//                        .padding()
                
                FavoritesView()
                    .tabItem {
                        Image(systemName: "bookmark.fill")
                    }
                
                CartView()
                    .tabItem {
                        Image(systemName: "cart.fill")
                    }
                
                AccountView()
                    .tabItem {
                        Image(systemName: "person.fill")
                    }
            } //: TabView
            .accentColor(.blue)
        }
        
    }
}

struct BottomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabBar()

    }
}
