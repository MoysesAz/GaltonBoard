import SwiftUI
import SpriteKit

struct GameBoardPresention: View {
    var scene: GameBoard
    @State var isPresented: Bool = true

    var body: some View {
        GeometryReader { frame in
            ZStack {
                VStack{
                    SpriteView(scene: scene)
                        .frame(width: frame.size.width, height: frame.size.height, alignment: .center)
                        .onAppear(perform: {
                            self.scene.setup()
                        })
                        .onDisappear(perform: {
                            scene.removeAllChildren()
                        })
                }
            }
            .sheet(isPresented: $isPresented) {
                Text(TextEnum.normal.rawValue)
            }
        }

    }
}

