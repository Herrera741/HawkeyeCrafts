//
//  FeaturedTabView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 2/15/22.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        
        TabView {
            ForEach(featuredItemsData) { featItem in
                FeaturedItemView(plantStool: featItem)
                        .padding(.top, 15)
                        .padding(.horizontal, 10)
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    } //: body
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
