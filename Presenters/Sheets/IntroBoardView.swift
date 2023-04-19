//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 19/04/23.
//

import SwiftUI

struct IntroBoardView: View {
    var body: some View {
        GeometryReader{ frame in
            VStack{
                Text("Galton Board")
                    .font(.largeTitle)
                    .bold()
                    .padding(.all)
                Text(TextEnum.intro.rawValue)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, frame.size.width * 0.1)
                    .foregroundColor(Color("Black"))

            }
            .frame(width: frame.size.width, height: frame.size.height, alignment: .center)
        }
    }
}

