//
//  AccountView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/24/22.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        
        ZStack {
            
            Color.orange
            
            Text("Account View")
                .font(.system(size: 36, weight: .bold, design: .default))
        }
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
