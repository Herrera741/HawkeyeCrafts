//
//  TitleView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 2/20/22.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 10)
        .padding(.bottom, 5)
        
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Stools")
            .previewLayout(.sizeThatFits)
    }
}
