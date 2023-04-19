import SwiftUI
import SpriteKit

struct GameBoardPresention: View {
    var scene: GameBoard
    @State var isPresented: Bool = true
    @State var isEndGame: Bool = false

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
                IntroBoardView()
            }

            .sheet(isPresented: $isEndGame) {
                EndBoardView()
            }

            .onChange(of: scene.stateGame.finishedGame) { newValue in
                isEndGame.toggle()
            }
        }

    }
}
