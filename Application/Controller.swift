//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 17/04/23.
//

import SwiftUI

struct Controller: View {
    var body: some View {
        GeometryReader { frame in
            TabView() {
                FrancisView()
                    .tag(0)
                NormalDistributionView()
                    .tag(1)
                GameBoardPresention()
                    .tag(2)
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .automatic))
            .ignoresSafeArea()
        }

    }
}


