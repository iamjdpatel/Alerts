//
//  VisualEffectView.swift
//  AlertDemo
//
//  Created by JD Patel on 30/01/20.
//  Copyright © 2020 JD. All rights reserved.
//

import SwiftUI

struct VisualEffectView: UIViewRepresentable {
    
    var effect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView { UIVisualEffectView() }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
    
}
