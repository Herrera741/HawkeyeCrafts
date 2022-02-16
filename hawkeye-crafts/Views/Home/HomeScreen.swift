//
//  HomeScreen.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/30/22.
//
import SwiftUI

struct HomeScreen: View {
    var body: some View {
        
        ZStack {
            VStack(spacing: 0) {
                
                NavBarHeader()
                    .padding(.top, 40)
                
                ScrollView(showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(width: UIScreen.main.bounds.width , height: 220)
                            .padding(.vertical, 30)
                            .cornerRadius(15)
                    }
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
