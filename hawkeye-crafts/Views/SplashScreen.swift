//
//  SplashScreen.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/22/22.
//

import SwiftUI

struct SplashScreen: View {
    
    @Binding var showAnimation: Bool
    let plantAnimation = "flying-plant"
    
    var body: some View {
        
        ZStack {
            
            Color("hc-blue").ignoresSafeArea().zIndex(0)
            
            GeometryReader { geo in
                let stoolImgPosY = (geo.size.height * 0.5) + 90
                let stoolImgPosX = (geo.size.width * 0.5)
                let plantPosY = stoolImgPosY - 215
                
                
                Image("wood-stool")
                    .scaleEffect(0.8)
                    .position(x: showAnimation ? stoolImgPosX : stoolImgPosX + 300, y: stoolImgPosY)
                    .zIndex(1)
                    .overlay(alignment: .center, content: {
                        LottieView(showAnimation: $showAnimation, animationFile: plantAnimation)
                            .frame(width: 250, height: 250)
                            .scaleEffect(0.75)
                            .position(x: stoolImgPosX, y: plantPosY)})
            } //: GeometryReader
        } //: ZStack
    } //: body
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen(showAnimation: .constant(true))
    }
}
