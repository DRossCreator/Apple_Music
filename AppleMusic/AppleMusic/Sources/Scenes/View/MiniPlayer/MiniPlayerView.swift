//
//  MiniPlayerView.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 26.06.2022.
//

import SwiftUI

struct MiniPlayerView: View {
    var animation: Namespace.ID
    @Binding var expand : Bool

    //metrics
    var height = UIScreen.main.bounds.height / 3
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets

    //sliders
    @State var volume: CGFloat = 0
    @State var duration: CGFloat = 0

    //gesture Offset
    @State var offset: CGFloat = 0

    var body: some View {
        VStack {

            //MARK: - MiniPlayer

            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 40 : 0, height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeArea?.top : 5)
                .padding(.vertical, expand ? 30 : 0)

            HStack(spacing: 15) {

                if expand{Spacer(minLength: 0)}

                Image("347aidan")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? height : 50, height: expand ? height : 50)
                    .cornerRadius(expand ? 15 : 5)
                    .shadow(radius: 5)

                if !expand {

                Text("Demons and Monsters")
                    .foregroundColor(.primary)
                    .font(.title3)
                    .padding(.leading, 10)
                }

                Spacer(minLength: 0)

                if !expand {

                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }

                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }

                }

            }
            .padding(.horizontal)

            //MARK: - Full Screen Player

            VStack(spacing: 20) {

                Spacer(minLength: 0)

                HStack {

                    if expand {
                        VStack(alignment: .leading, spacing: 2) {

                            Text("Demons and Monsters")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.medium)

                            Text("347aidan")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.light)

                        }
                    }

                    Spacer(minLength: 0)

                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }

                VStack {

                    Slider(value: $duration, in: 0...CGFloat(198))
                        .colorMultiply(.white)

                    HStack() {
                        Text("\(stringDuration(duration: Int(duration)))")
                            .font(.system(size: 11, weight: .regular, design: .default))
                            .foregroundColor(.gray)

                        Spacer(minLength: 0)

                        Text("-\(stringDuration(duration: Int(CGFloat(198) - duration)))")
                            .font(.system(size: 11, weight: .regular, design: .default))
                            .foregroundColor(.gray)

                    }

                }

                HStack(spacing: UIScreen.main.bounds.width / 6) {

                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }

                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                    }

                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }

                }
                .padding(.bottom, 20)

                HStack(spacing: 15) {

                    Image(systemName: "speaker.fill")
                        .font(.caption)
                        .foregroundColor(.white)

                    Slider(value: $volume)
                        .colorMultiply(.white)

                    Image(systemName: "speaker.wave.2.fill")
                        .font(.caption)
                        .foregroundColor(.white)

                }

                HStack(spacing: UIScreen.main.bounds.width / 5) {

                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .font(.title2)
                            .foregroundColor(.white)
                    }

                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundColor(.white)
                    }

                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundColor(.white)
                    }

                }
                .padding()
                .padding(.bottom, safeArea?.bottom == 0 ? 15 : safeArea?.bottom)

            }
            .padding([.leading, .trailing], 40)
            .frame(height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)

            }
        .frame(maxHeight: expand ? .infinity : 70)
        .background(

            VStack(spacing: 0) {

                if expand {

                    BlurView(blurColor: UIBlurEffect(style: .systemUltraThinMaterialDark))

                } else {

                    BlurView(blurColor: UIBlurEffect(style: .systemChromeMaterial))

                }

                Divider()
            }
            .onTapGesture {
                withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.95, blendDuration: 0.4)) {expand = true}
            }

        )

        //works correctly since iPhone X
        .cornerRadius(expand ? 30 : 0)
        .offset(y: expand ? 0 : -48)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onEnded(value:)).onChanged(onChanged(value:)))
        .ignoresSafeArea()
    }

    //MARK: - Private Functions

    private func onChanged(value: DragGesture.Value) {

        if value.translation.height > 0 && expand {
            offset = value.translation.height
        }

    }

    private func onEnded(value: DragGesture.Value) {
        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.95, blendDuration: 0.95)) {

            if value.translation.height > height {
                expand = false
            }

            offset = 0
        }
    }

    private func stringDuration(duration: Int) -> String {
        return "\(duration / 60):\((duration % 60 < 10) ? "0\(duration % 60)" : "\(duration % 60)")"
    }
}
