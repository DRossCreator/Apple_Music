//
//  MiniPlayerView.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 26.06.2022.
//

import SwiftUI

struct MiniPlayerView: View {
    var body: some View {
        
        VStack(alignment: .center) {

            HStack(alignment: .center) {
                Button(action: {
                    print("music button tapped")
                }) {
                Image("musicImage")
                    .frame(width: 70, height: 70, alignment: .leading)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.3),
                            radius: 2,
                            x: 2, y: 2)

                Text("Not playing")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                    .padding([.leading], 10)

                }
                Spacer()

                Button(action: {
                    print("play button pressed")
                }) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                }
                .padding(.trailing, 5)

                Button(action: {
                    print("forward button pressed")
                }) {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.black)
                }
            }
        }
        .padding([.trailing, .leading], 20)
        .padding([.top, .bottom], 10)
        .background(.bar)

        Divider()
    }
}

struct MiniPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayerView()
    }
}

