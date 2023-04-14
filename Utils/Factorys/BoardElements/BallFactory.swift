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
        return SKNode()
    }


    private func setupBall(width: CGFloat = 0) -> SKShapeNode {
        let ball = SKShapeNode(circleOfRadius: 10)
        ball.position = .init(x: frame.width * 0.2, y: frame.height)
        ball.fillColor = .systemPink
        ball.physicsBody = .init(circleOfRadius: 10)
        ball.strokeColor = .clear
        ball.physicsBody?.friction = 0.5
        ball.physicsBody?.restitution = 0.2
        return ball
    }



}
