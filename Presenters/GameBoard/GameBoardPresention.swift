import SwiftUI
import SpriteKit

struct GameBoardPresention: View {
    var scene: GameBoard

    var body: some View {
        GeometryReader { frame in
            VStack{
                SpriteView(scene: scene)
                    .frame(width: frame.size.width, height: frame.size.height * 0.95, alignment: .center)
                Spacer()
                    .frame(width: frame.size.width, height: frame.size.height * 0.05, alignment: .center)
            }
        }
    }
}

