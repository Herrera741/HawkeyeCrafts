//
//  BottomTabBar.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 2/2/22.
//

import SwiftUI

struct BottomTabBar: View {
    
    
    
    var body: some View {
        

        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            FavoritesView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
            
            CartView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
        } //: TabView
        .accentColor(.blue)
    } //: body
}

struct BottomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabBar()

    }
}
