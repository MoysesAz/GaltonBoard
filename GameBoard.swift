//
//  GameBoard.swift
//  GaltonBoard
//
//  Created by Moyses Miranda do Vale Azevedo on 12/04/23.
//

import SpriteKit

class GameBoard: SKScene {
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
            for _ in 0..<50 {
                setupBall()
            }
        }
    }
}

extension GameBoard {
    override func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
        let dx = CGFloat.random(in: -0.3...0.3)
        self.physicsWorld.gravity = .init(dx: dx, dy: -9.8)
    }

    private func setup() {
        let factory = GameBoardFactory(size: size)
        addChildren([
            factory.createFactory(factory: .matrixFactory).createNode(),
            factory.createFactory(factory: .boarsFactory).createNode()
        ])
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.physicsWorld.gravity = .init(dx: 0, dy: -9.8)

    }

    private func setupBall(width: CGFloat = 0) {
        let ball = SKShapeNode(circleOfRadius: 10)
        ball.position = .init(x: frame.width * 0.2, y: frame.height)
        ball.fillColor = .systemPink
        ball.physicsBody = .init(circleOfRadius: 10)
        ball.strokeColor = .clear
        ball.physicsBody?.friction = 0.5
        ball.physicsBody?.restitution = 0.2
        addChild(ball)
    }

}
