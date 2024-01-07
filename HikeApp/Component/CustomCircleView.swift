//
//  CustomCircleView.swift
//  HikeApp
//
//  Created by Oleh on 04.01.2024.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [
                        .customIndigoMedium,
                        .customSaimonLight
                    ],
                                   startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                                   endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                                  )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
                }
       MotionAnimationView()
        }
        .frame(width: 256, height: 256)

    }
}

#Preview {
    CustomCircleView()
}
