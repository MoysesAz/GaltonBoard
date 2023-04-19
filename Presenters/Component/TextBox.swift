//
//  SwiftUIView 2.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 18/04/23.
//

import SwiftUI

struct TextBox: View {
    @State var opacity = 0.6
    var text: String

    var body: some View {
        VStack {
            Rectangle()
                .fill(Color("White"))
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color("BallColor").opacity(opacity), radius: 3, x: 5, y: 10)
                .blur(radius: 1)
                .overlay(
                    Text(text)
                        .font(.title)
                        .padding()
                        .foregroundColor(Color("Black"))
                        .multilineTextAlignment(.leading)
                        .padding(.all)

                )
                .onAppear(){
                    withAnimation(.easeIn(duration: 1.5).repeatForever()) {
                        opacity = 0.2
                    }
                }
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

