import SwiftUI
import SpriteKit

struct GameBoardPresention1: View {
    var scene: GameBoard
    @State var isPresented: Bool = true
    @State var isEndGame: Bool = false
    @Binding var isSceneEnd: Bool

    var body: some View {
        GeometryReader { frame in
            ZStack {
                SpriteView(scene: scene)
                    .frame(width: frame.size.width, height: frame.size.height, alignment: .center)
                    .onAppear(perform: {
                        self.scene.setup()
                    })
                    .onDisappear(perform: {
                        scene.removeAllChildren()
                    })

            }
            .sheet(isPresented: $isPresented) {
                IntroBoardView(intro: TextEnum.introScene1.rawValue, instructions: TextEnum.instructionScene1.rawValue)
            }
            .sheet(isPresented: $isEndGame) {
                EndBoardView(key: $isSceneEnd)
            }
            .onChange(of: scene.stateGame.finishedGame) { newValue in
                isEndGame.toggle()            }
        }

    }
}


