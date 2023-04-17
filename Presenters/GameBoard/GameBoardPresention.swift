import SwiftUI
import SpriteKit

struct GameBoardPresention: View {
    var scene: SKScene {
        let scene = GameBoard()
        scene.scaleMode = .resizeFill
        return scene
    }
    var body: some View {
        GeometryReader { frame in
            ZStack{
                SpriteView(scene: scene)
                    .frame(width: frame.size.width, height: frame.size.height, alignment: .center)
            }
        }
    }
}
