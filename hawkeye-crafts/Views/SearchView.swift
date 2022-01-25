//
//  SearchView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/24/22.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        
        ZStack {
            
            Color.yellow
                .ignoresSafeArea()
            
            Text("Search View")
                .font(.system(size: 36, weight: .bold, design: .default))
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
