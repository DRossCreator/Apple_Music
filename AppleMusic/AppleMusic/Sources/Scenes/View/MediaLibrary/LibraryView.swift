//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 26.06.2022.
//

import SwiftUI

struct LibraryView: View {

    @State private var isShowFilter = false

    var body: some View {
        NavigationView {
            VStack {
                if isShowFilter {
                    MediaListCell()
                } else {
                    MediaInfoView()
                }
            }
            .navigationTitle("Media library")
            .navigationBarItems(trailing: Button(action : {
                isShowFilter.toggle()
            }, label: {
                if isShowFilter {
                    Text("Done").foregroundColor(.red)
                } else {
                    Text("Edit").foregroundColor(.red)
                }
            }))
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

