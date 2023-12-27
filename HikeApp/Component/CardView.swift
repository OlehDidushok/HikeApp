//
//  CardView.swift
//  HikeApp
//
//  Created by Oleh on 27.12.2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(colors: [
                            Color("ColorIndigoMedium"),
                            Color("ColorSaimonLight")
                                        ],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing
                                      )
                    )
                    .frame(width: 256, height: 256)
                
                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
