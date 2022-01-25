//
//  CartView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/24/22.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        
        ZStack {
            
            Color.green
                .ignoresSafeArea()
            
            Text("Cart View")
                .font(.system(size: 36, weight: .bold, design: .default))
        }
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
