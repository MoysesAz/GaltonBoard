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

    var body: some View {
        switch moment {
        case 0:
            momento1
        default:
            QuestionsView(dialog: .destiny)
        }
    }


    var momento1: some View {
        GeometryReader { frame in
            if firstGame {
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
                    GameBoardPresention(scene:
                                            GameBoard(factory: GameBoardFactory(size: frame.size) )
                    )
                    .highPriorityGesture(DragGesture())

                    .tag(5)
                }
                .tabViewStyle(.page)
                .indexViewStyle(
                    .page(backgroundDisplayMode: .always)
                )
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

            }
        }
    }

    var Game1: some View {
        GeometryReader { frame in

        }
    }
}


