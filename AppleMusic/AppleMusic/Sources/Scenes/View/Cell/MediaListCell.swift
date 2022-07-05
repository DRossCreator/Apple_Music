//
//  MediaCell.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 26.06.2022.
//

import SwiftUI

struct MediaListCell: View {

    @State private var isEditMode: EditMode = .active
    @State private var medias = MediaListModel.medias
    @State private var multiSelection = Set<UUID>()

    var body: some View {
        List(selection: $multiSelection) {
            ForEach(medias) { media in
                HStack {
                    Image(systemName: media.image)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.red)
                        .frame(width: 20, height: 20)
                        .padding([.top, .bottom, .trailing], 8)

                    Text(media.title)
                        .font(.title3)
                    }
                }
            .onMove { (indexSet, index) in
                self.medias.move(fromOffsets: indexSet,
                                 toOffset: index)
            }
        }
        .environment(\.editMode, self.$isEditMode)
        .listStyle(InsetListStyle())
        .accentColor(.red)
    }
}

struct MediaListCell_Previews: PreviewProvider {
    static var previews: some View {
        MediaListCell()
    }
}


