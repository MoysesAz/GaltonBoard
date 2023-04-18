//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 17/04/23.
//

import SwiftUI
import SpriteKit


struct Controller: View {
    @State private var selectedIndex = 0 // Variável de estado para o índice selecionado
    var scene1: GameBoard {
        let scene = GameBoard()
        scene.scaleMode = .resizeFill
        scene.constantPosition = 0
        return scene
    }

    var scene2: GameBoard {
        let scene = GameBoard()
        scene.scaleMode = .resizeFill
        scene.constantPosition = -1
        return scene
    }

    var scene3: GameBoard {
        let scene = GameBoard()
        scene.scaleMode = .resizeFill
        scene.constantPosition = 1
        return scene
    }

    var scene4: GameBoard {
        let scene = GameBoard()
        scene.scaleMode = .resizeFill
        scene.constantPosition = 4
        return scene
    }

    var body: some View {
        GeometryReader { frame in
            TabView(selection: $selectedIndex) {
                FrancisView()
                    .tag(0)
                NormalDistributionView()
                    .tag(1)
                GameBoardPresention(scene: scene1)
                    .tag(3)
                    .ignoresSafeArea()
                GameBoardPresention(scene: scene2)
                    .tag(4)
                    .ignoresSafeArea()
                GameBoardPresention(scene: scene3)
                    .tag(5)
                    .ignoresSafeArea()
                GameBoardPresention(scene: scene4)
                    .tag(6)
                    .ignoresSafeArea()
            }
            .tabViewStyle(.page)
            .indexViewStyle(
                .page(backgroundDisplayMode: .always)
            )
        }
    }
}


