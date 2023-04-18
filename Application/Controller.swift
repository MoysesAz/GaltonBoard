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
    @State private var firstGame = false
    @State private var moment = 0

    var scene1: GameBoard {
        let scene = GameBoard()
        scene.scaleMode = .resizeFill
        scene.constantPosition = 0
        return scene
    }

    var scene2: GameBoard {
        let scene = GameBoard()
        scene.scaleMode = .resizeFill
        scene.constantPosition = 0
        return scene
    }

    var scene3: GameBoard {
        let scene = GameBoard()
        scene.scaleMode = .resizeFill
        scene.constantPosition = 0
        return scene
    }

    var body: some View {
        switch moment {
        case 0:
            momento1
        case 1:
            momento2
        default:
            QuestionsView(dialog: .destiny)
        }
    }


    var momento1: some View {
        GeometryReader { frame in
            if firstGame {
                GameBoardPresention(scene: scene1)
            } else {
                TabView(selection: $selectedIndex) {
                    QuestionsView(dialog: .destiny)
                        .tag(0)
                    FrancisView()
                        .tag(1)
                    ResearchView()
                        .tag(2)
                    NormalDistributionView()
                        .tag(3)
                    CallScene(key: $firstGame)
                        .tag(4)
                }
                .tabViewStyle(.page)
                .indexViewStyle(
                    .page(backgroundDisplayMode: .always)
                )
            }
        }
    }

    var momento2: some View {
        GeometryReader { frame in
            if firstGame {
                GameBoardPresention(scene: scene1)
            } else {
                TabView(selection: $selectedIndex) {
                    ResearchView()
                    NormalDistributionView()
                    CallScene(key: $firstGame)
                }
                .tabViewStyle(.page)
                .indexViewStyle(
                    .page(backgroundDisplayMode: .always)
                )
            }
        }
    }


}


