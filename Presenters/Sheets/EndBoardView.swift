//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 19/04/23.
//

import SwiftUI

struct EndBoardView: View {
    var body: some View {
        Text(TextEnum.end.rawValue)
            .font(.title)
            .multilineTextAlignment(.center)
            .padding()
            .foregroundColor(Color("Black"))
    }
}
