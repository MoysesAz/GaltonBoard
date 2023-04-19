//
//  SwiftUIView 2.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 18/04/23.
//

import SwiftUI

struct TextBox: View {
    var text: String

    var body: some View {
        GeometryReader { frame in
            VStack {
                Spacer()
                    .frame(height: frame.size.height * 0.6)
                Rectangle()
                    .fill(Color("White").opacity(0.60))
                    .frame(width: frame.size.width * 0.8, height: frame.size.height * 0.3)
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: Color.black.opacity(0.6), radius: 10, x: 0, y: 10)
                    .blur(radius: 2)
                    .overlay(
                        Text(text)
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
