//
//  SplashView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/22/22.
//

import SwiftUI

struct SplashView: View {
    
    @State var showAnimation = true
    let plantAnimation = "flying-plant"
    
    var body: some View {
        
        ZStack {
            
            Color("hc-blue").ignoresSafeArea()

            if showAnimation {
                GeometryReader { geo in
                    let stoolImgPosY = (geo.size.height * 0.5) + 90
                    let stoolImgPosX = (geo.size.width * 0.5)
                    let plantPosY = stoolImgPosY - 230
                    
                    Image("wood-stool")
                        .scaleEffect(0.8)
                        .position(x: stoolImgPosX, y: stoolImgPosY)
                        .overlay(alignment: .center, content: {
                            LottieView(showAnimation: $showAnimation, animationFile: plantAnimation)
                                .frame(width: 250, height: 250)
                                .scaleEffect(0.75)
                                .position(x: stoolImgPosX, y: plantPosY)})
                } // end GeometryReader
            }
//            else {
//                LoginView()
//            }

        } // end ZStack
    } // end body
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
