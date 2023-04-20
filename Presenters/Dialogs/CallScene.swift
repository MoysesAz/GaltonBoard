//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 18/04/23.
//

import SwiftUI

struct CallScene: View {
    @Binding var key: Bool
    

    var body: some View {
        VStack{
            Button(action: {
                key.toggle()
            }){

                Text("Start GaltonBoard")
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))

    }
}
