//
//  RadioView.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 07.07.2022.
//

import SwiftUI

struct RadioView: View {

    @State private var model = RadioModel.radioList

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(Array(model.enumerated()), id: \.offset) { offset, item in
                    switch offset {
                    case 0: FirstSectionCollection(model: item)
                    default: VStack {
                        Rectangle()
                            .fill(Color(UIColor.systemGray6.cgColor))
                            .frame(height: 2, alignment: .center)
                            .padding(.top, 10)
                        SecondSectionStation(model: item)
                    }
                    }
                }
            }
            .navigationTitle("Radio")
        }
    }
}

struct FirstSectionCollection: View {
    var model: [RadioModel]

    let rows = [
        GridItem(.adaptive(minimum: 300))
    ]

    var body: some View {
        Section {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(Array(model.enumerated()), id: \.offset) { offset, data in
                        switch offset {
                        case 0:
                            self.horizontalScroll(data: data)
                                .padding(.leading, 20)
                        case (model.count - 1):
                            self.horizontalScroll(data: data)
                                .padding(.trailing, 20)
                        default:
                            self.horizontalScroll(data: data)
                        }
                    }
                }
                Spacer()
            }
        }
    }

    private func horizontalScroll(data: RadioModel) -> some View {
        return VStack {
            Rectangle()
                .fill(Color(UIColor.systemGray6.cgColor))
                .frame(height: 2, alignment: .center)
                .padding(.bottom, 10)

            Text(data.additionalInfo)
                .font(.system(size: 15, weight: .regular, design: .default))
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)

            Text(data.name)
                .font(.system(size: 24, weight: .regular, design: .default))
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(data.nameStation ?? "")
                .font(.system(size: 24, weight: .regular, design: .default))
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)

            Image(data.icon)
                .resizable()
                .frame(width: 380, height: 220)
                .cornerRadius(10)
        }
    }
}

struct SecondSectionStation: View {
    var model: [RadioModel]

    let columns = [
        GridItem(.adaptive(minimum: 400))
    ]

    var body: some View {
        Section(
            header: HStack {
                Text("Stations")
                    .bold()
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
            }
        ) {
            LazyVGrid(columns: columns) {
                ForEach(Array(model.enumerated()), id: \.offset) { offset, data in
                    if offset == (model.count - 1) {
                        self.verticalScroll(data: data)

                            .padding(.bottom, 100)
                    } else {
                        self.verticalScroll(data: data)
                    }
                }
            }
        }
        .padding(.leading, 20)
    }

    private func verticalScroll(data: RadioModel) -> some View {
        return HStack {
            Image(data.icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .cornerRadius(5)

            VStack {
                Text(data.name)
                    .font(.system(size: 20, weight: .regular, design: .default))
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text(data.additionalInfo)
                    .font(.system(size: 15, weight: .regular, design: .default))
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }

}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
