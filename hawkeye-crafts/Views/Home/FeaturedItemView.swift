//
//  FeaturedItemView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 2/14/22.
//

import SwiftUI

struct FeaturedItemView: View {
    
    let plantStool: PlantStool
    
    var body: some View {
        
        Image(plantStool.image)
            .resizable()
            .frame(width: 350)
            .scaledToFit()
            .cornerRadius(15)
        
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(plantStool: featuredItemsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}
