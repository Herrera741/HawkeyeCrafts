//
//  LottieView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/22/22.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    @Binding var showAnimation: Bool
    var animationFile: String
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        
        let lottieAnimationView = AnimationView(name: animationFile)
        lottieAnimationView.loopMode = .playOnce
        lottieAnimationView.play { complete in
            if complete {
                showAnimation.toggle()
            }
        }
        
        return lottieAnimationView
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        
    }

}
