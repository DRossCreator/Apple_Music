//
//  BlurView.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 14.07.2022.
//

import SwiftUI

struct BlurView: UIViewRepresentable {

    var blurColor: UIBlurEffect

    func makeUIView(context: Context) -> UIVisualEffectView {

        let view = UIVisualEffectView(effect: blurColor)

        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {

    }
}

