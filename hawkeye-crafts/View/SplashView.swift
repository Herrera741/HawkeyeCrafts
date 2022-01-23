//
//  SplashView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/22/22.
//

import SwiftUI

struct SplashView: View {
    
    @State var isAnimationActive: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color("hc-blue").ignoresSafeArea()
            
            if self.isAnimationActive {
                LoginView()
                
            } else {
                
                
                GeometryReader { geo in
                    let stoolImgOffsetY = (geo.size.height * 0.5) + 90
                    let stoolImgOffsetX = (geo.size.width * 0.5)
                    let plantOffsetY = stoolImgOffsetY - 230
                    
                    Image("wood-stool")
                        .scaleEffect(0.8)
                        .position(x: stoolImgOffsetX, y: stoolImgOffsetY)
                        .overlay(alignment: .center, content: {
                            LottieView(filename: "flying-plant")
                                .frame(width: 250, height: 250)
                                .scaleEffect(0.75)
                                .position(x: stoolImgOffsetX, y: plantOffsetY)})
                }
            }
        } // end ZStack
        .onAppear {
            DispatchQueue.main
                .asyncAfter(deadline: .now() + 8) {
                    self.isAnimationActive = true
                }
        }
        
    } // end body
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
