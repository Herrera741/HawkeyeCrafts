//
//  HomeScreen.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/30/22.
//
import SwiftUI

struct HomeScreen: View {
    
//    private var twoColumnGrid: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    private var twoColumnGrid: [GridItem] = Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 0) {
                
                NavBarHeader()
                    .padding(.top, 40)
                
                ScrollView(showsIndicators: false, content: {
                    VStack {
                        FeaturedTabView()
                            .frame(width: UIScreen.main.bounds.width , height: 220)
                            .padding(.top, 25)
                        
                        TitleView(title: "Stools")
                        
                        LazyVGrid(columns: twoColumnGrid) {
                            ForEach(plantStoolsData) { productItem in
                                ProductItemView(product: productItem)
                            }
                        } //: LazyVGrid
                        .padding(.horizontal, 15)
                    } //: VStack
                }) //: ScrollView
                
            } //: VStack
            .background(Color.yellow.opacity(0.05))
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
        
    } //: body
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
//            .previewLayout(.sizeThatFits)
    }
}
