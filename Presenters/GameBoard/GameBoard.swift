//
//  GameBoard.swift
//  GaltonBoard
//
//  Created by Moyses Miranda do Vale Azevedo on 12/04/23.
//

import SpriteKit

class GameBoard: SKScene {
    lazy var factory = GameBoardFactory(size: size)
    lazy var constantPosition = 0
    lazy var countBalls = 0

    override func didMove(to view: SKView) {
        backgroundColor = .black
        removeAllActions()
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
            countBalls += 50
            var node = factory.createFactory(factory: .ballsFactory).createNode()
            switch constantPosition {
            case -1:
                node.position.x += frame.size.width * 0.3
            case 0:
                node.position.x += frame.size.width * 0.5
            case 1:
                node.position.x += frame.size.width * 0.7
            case 4:
                //Refatoracão
                let ball = BallsFactory(size: size).setupBall(locationX: 0)
                node = SKNode()
                node.position.x = location.x
                node.addChild(ball)
                countBalls -= 49
            default:
                print("Valor invalido")
            }

            addChild(
                node
            )
        }
    }
}

extension GameBoard {
    override func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
        let dx = CGFloat.random(in: -0.1...0.1)
        self.physicsWorld.gravity = .init(dx: dx, dy: -9.8)
        if countBalls > 1000 {
            removeAllChildren()
            setup()
            countBalls = 0
        }
    }

    func setup() {
        addChildren([
            factory.createFactory(factory: .matrixFactory).createNode(),
            factory.createFactory(factory: .boarsFactory).createNode()
        ])
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.physicsWorld.gravity = .init(dx: 0, dy: -9.8)

    }
}
