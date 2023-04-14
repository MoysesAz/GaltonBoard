//
//  File.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 14/04/23.
//

import SpriteKit

class BallFactory: BoardElementsFactoryProtocol {
    var size: CGSize

    required init(size: CGSize) {
        self.size = size
    }

    func createNode() -> SKNode {
        let node = SKNode()
        for _ in 0..<50 {
            node.addChild(setupBall(locationX: 0.5))
        }
        return node
    }

    private func setupBall(locationX: CGFloat) -> SKShapeNode {
        let ball = SKShapeNode(circleOfRadius: 10)
        ball.position = .init(x: size.width * locationX, y: size.height)
        ball.fillColor = .systemPink
        ball.physicsBody = .init(circleOfRadius: 10)
        ball.strokeColor = .clear
        ball.physicsBody?.friction = 0.5
        ball.physicsBody?.restitution = 0.2
        return ball
    }



}
