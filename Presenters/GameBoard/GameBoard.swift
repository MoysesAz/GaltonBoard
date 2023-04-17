//
//  GameBoard.swift
//  GaltonBoard
//
//  Created by Moyses Miranda do Vale Azevedo on 12/04/23.
//

import SpriteKit

class GameBoard: SKScene {
    lazy var  factory = GameBoardFactory(size: size)

    override func didMove(to view: SKView) {
        backgroundColor = .black
        setup()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)

        let touch = touches.first!
        let location = touch.location(in: self)

        if location.y < frame.height * 0.5 {
            removeAllChildren()
            setup()
        } else {
            addChild(
                factory.createFactory(factory: .ballsFactory).createNode()
            )
        }
    }
}

extension GameBoard {
    override func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
        let dx = CGFloat.random(in: -0.1...0.1)
        self.physicsWorld.gravity = .init(dx: dx, dy: -9.8)
    }

    private func setup() {
        addChildren([
            factory.createFactory(factory: .matrixFactory).createNode(),
            factory.createFactory(factory: .boarsFactory).createNode()
        ])
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.physicsWorld.gravity = .init(dx: 0, dy: -9.8)

    }
}
