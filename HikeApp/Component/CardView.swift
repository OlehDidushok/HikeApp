//
//  CardView.swift
//  HikeApp
//
//  Created by Oleh on 27.12.2023.
//

import SwiftUI

struct CardView: View {
    
    // MARK: PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    // MARK: FUNCTIONS
    func randomImage() {
        print("--- BUTTON WAS PRESSED ---")
        print("Status: Old Image Number = \(imageNumber)")
        repeat {
            randomNumber = Int.random(in: 1...5)
            print("Action: Random Number Generated = \(imageNumber)")
        } while randomNumber == imageNumber
        imageNumber = randomNumber
        print("Resalt: New Image Number = \(imageNumber)")
        print("THE END")
        print("\n")
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                
                // MARK: HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hicking")
                            .fontWeight(.black)
                            .font(.system(size: 50))
                            .foregroundStyle(
                                LinearGradient(colors: [
                                    .customGrayLight,
                                    .customGrayMedium],
                                               startPoint: .top,
                                               endPoint: .bottom)
                            )
                        
                        Spacer()
                        
                        Button {
                            // ACTION: Show a Sheet
                        } label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friend and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                // MARK: MAIN CONTENT
                
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
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                // MARK: FOOTER
                Button {
                    // ACTION: Generate a random number
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight,
                                                    .customGreenMedium],
                                           startPoint: .top,
                                           endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
            }
            
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
