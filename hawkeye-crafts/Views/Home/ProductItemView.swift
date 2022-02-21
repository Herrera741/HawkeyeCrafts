//
//  ProductItemView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 2/20/22.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: PlantStool
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
            } //: ZStack
            .background(Color("hc-pink"))
            .cornerRadius(10)
            
            // product title
            Text(product.title)
                .font(.title3)
                .fontWeight(.heavy)
            
            // product price
            Text("$120")
                .fontWeight(.semibold)
                .foregroundColor(.blue)
        } //: VStack
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: plantStoolsData[2])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
    }
}
