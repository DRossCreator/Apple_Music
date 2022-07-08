//
//  ContentView.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 26.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {

            TabView {

                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note.house.fill")
                        Text("Media library")
                    }

                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Radio")
                    }

                Text("")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
            }
            .accentColor(.red)

            MiniPlayerView()
                .offset(y: -49)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
