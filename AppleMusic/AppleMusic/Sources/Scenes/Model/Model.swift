//
//  Model.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 26.06.2022.
//

import Foundation

struct MediaListModel: Identifiable {
    var id = UUID()
    let title: String
    let image: String
}

struct RadioModel: Hashable {
    var icon: String
    var name: String
    var nameStation: String?
    var additionalInfo: String
}

