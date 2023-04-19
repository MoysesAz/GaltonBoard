//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 17/04/23.
//

import SwiftUI


struct DialogComponent: View {
    let imageName: ImagesNamesEnum
    let dialog: TextEnum

    var body: some View {
        GeometryReader { frame in
            ZStack{
                Image(imageName.rawValue)
                    .resizable()
                VStack {
                    Spacer()
                        .frame(height: frame.size.height * 0.6)
                    Rectangle()
                        .fill(Color("White"))
                        .frame(width: frame.size.width * 0.8, height: frame.size.height * 0.3)
                        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .shadow(color: Color("BallColor").opacity(0.8), radius: 1, x: 5, y: 10)
                        .blur(radius: 1)
                        .overlay(
                            Text(dialog.rawValue)
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding()
                                .foregroundColor(Color("Black"))
                        )
                        .padding()
                    Spacer()
                        .frame(height: frame.size.height * 0.1)
                }
            }
        }
    }
}

