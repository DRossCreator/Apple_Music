//
//  Search.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 08.07.2022.
//

import SwiftUI

struct Search: View {

    @State var search = ""

    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)

    var body: some View {
        ScrollView {
//            frame(width: UIScreen.main.bounds.width - 40)

            VStack(spacing: 18) {

                HStack {

                    Text("Search")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)

                    Spacer(minLength: 0)
                }

                HStack(spacing: 15) {
                    Image(systemName: "magnifyinggass")
                    TextField("Search", text: $search)
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(15)

                LazyVGrid(columns: columns, spacing: 10) {

                    ForEach(1...10, id: \.self) {index in
                        Image("p\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            //if width = 100, two side padding = 30, spacing = 20, total 50
                            .frame(width: (UIScreen.main.bounds.width - 30) / 2, height: 180)
                            .cornerRadius(15)
                    }
                }
                .padding(.top, 10)
            }
            .padding()
            .padding(.bottom, 80)
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
