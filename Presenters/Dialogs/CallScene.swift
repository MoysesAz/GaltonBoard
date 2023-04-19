//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 18/04/23.
//

import SwiftUI

struct CallScene: View {
    @Binding var key: Bool
    @State var opacity = 1.0


    var body: some View {
        VStack{
            Button(action: {
                key.toggle()
            }){

                Text("Play")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(Color("Black"))

                    .onAppear(){
                        withAnimation(.easeIn(duration: 1.5).repeatForever()) {
                            opacity = 0.5
                        }
                    }
                    .padding()
                    .background((
                        Rectangle()
                            .fill(Color("White"))
                            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            .shadow(color: Color("BallColor").opacity(opacity), radius: 3, x: 5, y: 10)
                            .blur(radius: 1)
                    )
                    )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))

    }
}
