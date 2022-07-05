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

extension MediaListModel {
    static var medias = [
        MediaListModel(title: "Playlists", image: "music.mic"),
        MediaListModel(title: "Artists", image: "music.note"),
        MediaListModel(title: "Albums", image: "rectangle.stack.fill"),
        MediaListModel(title: "Songs", image: "music.note"),
        MediaListModel(title: "TV & Movies", image: "tv"),
        MediaListModel(title: "Music Videos", image: "music.note.tv"),
        MediaListModel(title: "Genres", image: "guitars"),
        MediaListModel(title: "Compilations", image: "person.2.crop.square.stack"),
        MediaListModel(title: "Composers", image: "music.quarternote.3"),
        MediaListModel(title: "Downloaded", image: "arrow.down.circle"),
        MediaListModel(title: "Home Sharing", image: "music.note.house"),
    ]
}

