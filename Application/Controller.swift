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
    @ObservedObject private var stateGame1 = StateGame()
    @ObservedObject private var stateGame2 = StateGame()
    @ObservedObject private var stateGame3 = StateGame()
    @ObservedObject private var stateGame4 = StateGame()


    var body: some View {
        switch moment {
        case 0:
            Game1
        default:
            QuestionsView(dialog: .welcome)
        }
    }

    var Game1: some View {
        GeometryReader { frame in
            if firstGame {
                GameBoardPresention(
                    scene: GameBoard(factory: GameBoardFactory(size: frame.size), constantPosition: 0, stateGame: stateGame1)
                )
            } else {
                TabView(selection: $selectedIntroduction) {
                    QuestionsView(dialog: .welcome)
                        .tag(0)
                    ChanceView()
                        .tag(1)
                    FrancisView()
                        .tag(2)
                    NormalDistributionView(dialog: .normal)
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

    var Game2: some View {
        GeometryReader { frame in

        }
    }
}


