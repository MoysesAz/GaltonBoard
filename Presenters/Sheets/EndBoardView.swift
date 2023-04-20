//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 19/04/23.
//

import SwiftUI

struct EndBoardView: View {
    @Binding var key: Bool
    var observations: String

    var body: some View {
        GeometryReader{ frame in
            VStack{
                Text("Galton Board")
                    .font(.largeTitle)
                    .bold()
                    .padding(.all)
                Text(observations)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, frame.size.width * 0.1)
                    .foregroundColor(Color("Black"))
                Spacer()
                HStack {
                    Button(action: {
                        key.toggle()
                    }){

                        Text("Next Level")
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(Color("White"))

                            .padding()
                            .background((
                                Rectangle()
                                    .fill(Color("BallColor"))
                                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                    .blur(radius: 1)
                            )
                            )
                    }
                }
                Spacer()
            }
            .frame(width: frame.size.width, height: frame.size.height, alignment: .center)
        }
    }
}
