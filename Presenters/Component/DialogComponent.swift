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

    var body: some View {
        GeometryReader { frame in
            if #available(iOS 16.0, *) {
                NavigationStack {
                    ZStack {
                        Image(imageName.rawValue)
                            .resizable()
                            .frame(width: frame.size.width, height: frame.size.height, alignment: .center)
                        VStack {
                            Spacer()
                                .frame(height: frame.size.height * 0.7)
                            ZStack {
                                Rectangle()
                                    .frame(width: frame.size.width * 0.8, height: frame.size.height * 0.2, alignment: .center)
                                    .cornerRadius(frame.size.width * 0.5)
                                Text(dialog.rawValue)
                                    .frame(height: frame.size.height * 0.1)
                                    .padding(10)
                                    .foregroundColor(.white)
                            }
                            Spacer()
                                .frame(height: frame.size.height * 0.1)
                        }
                    }
                }







            } else {
                NavigationView {
                    VStack {
                        Image(imageName.rawValue)
                            .resizable()
                            .padding()
                        Text(dialog.rawValue)
                            .frame(height: frame.size.height * 0.1)
                            .padding(10)
                    }
                }
                .navigationViewStyle(.stack)
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DialogComponent(imageName: .francis, dialog: .galton)
    }
}
