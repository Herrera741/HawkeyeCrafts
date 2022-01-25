//
//  FavoritesView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/24/22.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        
        ZStack {
            
            Color.red
                .ignoresSafeArea()
            
            Text("Favorites View")
                .font(.system(size: 36, weight: .bold, design: .default))
        }
        
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
