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
    @State var opacity = 1.0

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
                        .frame(width: frame.size.width * 0.8, height: frame.size.height * 0.25)
                        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .shadow(color: Color("BallColor").opacity(opacity), radius: 3, x: 5, y: 10)
                        .blur(radius: 1)
                        .overlay(
                            Text(dialog.rawValue)
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding()
                                .foregroundColor(Color("Black"))

                        )
                        .onAppear(){
                            withAnimation(.easeIn(duration: 1.5).repeatForever()) {
                                opacity = 0.5
                            }
                        }
                        .padding()
                    Spacer()
                        .frame(height: frame.size.height * 0.15)
                }
            }
        }
    }
}

