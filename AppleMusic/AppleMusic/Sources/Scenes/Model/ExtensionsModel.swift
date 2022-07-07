//
//  AppleMusicModel.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 07.07.2022.
//

import Foundation

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

extension RadioModel {
    static var radioList = [
        [
        RadioModel(icon: "light-pop", name: "Soft Pop Station", nameStation: "Apple Music Pop", additionalInfo: "FEATURED STATION"),
        RadioModel(icon: "hit", name: "Hits Station", nameStation: "Apple Music Hits", additionalInfo: "FEATURED STATION"),
        RadioModel(icon: "hip-hop", name: "Hip-Hop Station", nameStation: "Apple Music Hip-Hop", additionalInfo: "FEATURED STATION"),
        RadioModel(icon: "pop", name: "Pop Station", nameStation: "Apple Music Pop", additionalInfo: "APPLE MUSIC STATION"),
        RadioModel(icon: "rock", name: "Classic Rock Station", nameStation: "Apple Music Classic Rock", additionalInfo: "FEATURED STATION"),
        RadioModel(icon: "smus-music", name: "Smooth Jazz Station", nameStation: "Apple Music Jazz", additionalInfo: "EXCLUSIVE"),
        RadioModel(icon: "chilout", name: "Chill Station", nameStation: "Apple Music Chill", additionalInfo: "FEATURED STATION")
        ],
        [
        RadioModel(icon: "alternativa-station", name: "Alternative Station", additionalInfo: "Apple Music Alternative"),
        RadioModel(icon: "child-station", name: "Lullabies Station", additionalInfo: "Apple Music Family"),
        RadioModel(icon: "children-station", name: "Kids Songs in Russian Station", additionalInfo: "Apple Music Kids"),
        RadioModel(icon: "classic-rock-station", name: "Classic Rock Station", additionalInfo: "Apple Music Classic Rock"),
        RadioModel(icon: "hard-rock-station", name: "Hard Rock Station", additionalInfo: "Apple Music Hard Rock"),
        RadioModel(icon: "hit-2000-station", name: "2000s Hits Station", additionalInfo: "Apple Music Hits"),
        RadioModel(icon: "hit-2010-station", name: "2010s Hits Station", additionalInfo: "Apple Music Hits"),
        RadioModel(icon: "hit-all-time-station", name: "Classic Hits Station", additionalInfo: "Apple Music Hits")
        ],
        ]
}
