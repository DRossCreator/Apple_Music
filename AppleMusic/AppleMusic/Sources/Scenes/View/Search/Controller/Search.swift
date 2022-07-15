//
//  Search.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 08.07.2022.
//

import SwiftUI
import UIKit

struct SearchUIKit: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> UINavigationController {
        let viewController = SearchViewController()
        let navigationController = UINavigationController(rootViewController: viewController)

        return navigationController
        }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
}
