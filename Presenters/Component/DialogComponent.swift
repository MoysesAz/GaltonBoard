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
                    TextBox(text: dialog.rawValue)
                    Spacer()
                        .frame(height: frame.size.height * 0.15)
                }
            }
        }
    }
}

