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
            VStack {
                Image(imageName.rawValue)
                    .resizable()
                Text(dialog.rawValue)
                    .frame(height: frame.size.height * 0.1)
                    .padding(10)
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DialogComponent(imageName: .francis, dialog: .galton)
    }
}
