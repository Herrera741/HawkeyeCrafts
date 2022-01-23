//
//  LottieView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/22/22.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    var filename: String
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        
        let lottieAnimationView = AnimationView(name: filename)
        lottieAnimationView.play()
        
        return lottieAnimationView
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        
    }

}
