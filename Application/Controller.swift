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
    @State private var selectedIntroduction = 0 // Variável de estado para o índice selecionado
    @State private var firstGame = false
    @State private var moment = 0

    var body: some View {
        switch moment {
        case 0:
            Game1
        default:
            QuestionsView(dialog: .destiny)
        }
    }

    var Game1: some View {
        GeometryReader { frame in
            if firstGame {
                GameBoardPresention(scene:
                                        GameBoard(factory: GameBoardFactory(size: frame.size), constantPosition: 0)
                )
            } else {
                TabView(selection: $selectedIntroduction) {
                    QuestionsView(dialog: .destiny)
                        .tag(0)
                    FrancisView()
                        .tag(1)
                    ResearchView()
                        .tag(2)
                    NormalDistributionView()
                        .tag(3)
                    CallScene(key: $firstGame)
                }
                .tabViewStyle(.page)
                .indexViewStyle(
                    .page(backgroundDisplayMode: .always)
                )

            }
        }
    }

    var Game2: some View {
        GeometryReader { frame in

        }
    }
}


