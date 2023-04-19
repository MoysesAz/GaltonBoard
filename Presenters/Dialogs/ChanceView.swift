//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 19/04/23.
//

import SwiftUI

struct ChanceView: View {
    @State var opacity = 1.0
    var body: some View {
        GeometryReader { frame in
            ZStack{
                VStack{
                    Spacer()
                        .frame(height: frame.size.height * 0.2)

                    Image(
                        ImagesNamesEnum.darkDice.rawValue
                    )
                        .frame(width: frame.size.width, height: frame.size.height * 0.2, alignment: .center)
                    Spacer()
                        .frame(height: frame.size.height * 0.6)

                }
                VStack {
                    Spacer()
                        .frame(height: frame.size.height * 0.6)
                    TextBox(text: TextEnum.chance.rawValue)
                    Spacer()
                        .frame(height: frame.size.height * 0.15)
                }
            }
        }
        .background(Color("Background"))

    }
}

