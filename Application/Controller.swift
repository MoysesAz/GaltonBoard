//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 17/04/23.
//

import SwiftUI
import SpriteKit


struct Controller: View {
    @State private var selectedIndex = 0
    @State private var selectedIntroduction = 0 
    @State private var firstGame = false


    @State private var isSceneEnd1 = false
    @State private var isSceneEnd2 = false
    @State private var isSceneEnd4 = false



    @State private var moment = 0
    @ObservedObject private var stateGame1 = StateGame()
    @ObservedObject private var stateGame2 = StateGame()
    @ObservedObject private var stateGame4 = StateGame()


    var body: some View {
        if !isSceneEnd1 && !isSceneEnd2 && !isSceneEnd4 {
            Game1
        }
        else if (isSceneEnd1 && !isSceneEnd2 && !isSceneEnd4) {
            Game2
        }

        else if (isSceneEnd1 && isSceneEnd2 && !isSceneEnd4) {
            Game4
        }
        else if (isSceneEnd1 && isSceneEnd2 && isSceneEnd4) {
            QuestionsView(dialog: .thanks)
        }

    }

    var Game1: some View {
        GeometryReader { frame in
            if firstGame {
                GameBoardPresention1(
                    scene: GameBoard(factory: .init(size: frame.size), constantPosition: 0, stateGame: stateGame1), isSceneEnd: $isSceneEnd1
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
            GameBoardPresention2(
                scene: GameBoard(factory: .init(size: frame.size), constantPosition: -1, stateGame: stateGame2), isSceneEnd: $isSceneEnd2)
        }
    }
    var Game4: some View {
        GeometryReader { frame in
            GameBoardPresention4(
                scene: GameBoard(factory: .init(size: frame.size), constantPosition: 4, stateGame: stateGame4), isSceneEnd: $isSceneEnd4)
        }
    }

}


