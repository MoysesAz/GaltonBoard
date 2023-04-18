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
        VStack {
            Button(action: {
                key.toggle()
            }){
                Text("View Principal")
            }
        }
    }
}
