//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 19/04/23.
//

import SwiftUI

struct IntroBoardView: View {
    var intro: String
    var instructions: String

    var body: some View {
        GeometryReader{ frame in
            VStack{
                Text("Galton Board")
                    .font(.largeTitle)
                    .bold()
                    .padding(.all)
                Text(intro)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, frame.size.width * 0.1)
                    .foregroundColor(Color("Black"))
                Text(instructions)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, frame.size.width * 0.025)
                    .foregroundColor(Color("BallColor"))
                    .padding(.top, 100)

            }
            .frame(width: frame.size.width, height: frame.size.height, alignment: .center)
        }
    }
}

