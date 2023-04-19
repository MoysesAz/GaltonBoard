//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 18/04/23.
//

import SwiftUI

struct QuestionsView: View {
    var dialog: TextEnum
    
    var body: some View {
        Text(dialog.rawValue)
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding()
    }
}

