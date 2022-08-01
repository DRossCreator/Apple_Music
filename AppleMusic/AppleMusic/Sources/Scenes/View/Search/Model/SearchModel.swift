//
//  SearchModel.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 15.07.2022.
//

import Foundation

struct SearchModel {
    let image: String
}

extension SearchModel {
    static var searchList = [
        SearchModel(image: "Spatial Audio"),
        SearchModel(image: "Hits In Russia"),
        SearchModel(image: "Hip-Hop In Russia"),
        SearchModel(image: "Essential"),
        SearchModel(image: "Chill"),
        SearchModel(image: "Kids"),
        SearchModel(image: "Fitness"),
        SearchModel(image: "Charts"),
        SearchModel(image: "Sleep"),
        SearchModel(image: "Hits"),
        SearchModel(image: "2010s"),
        SearchModel(image: "2000s"),
    ]
}
