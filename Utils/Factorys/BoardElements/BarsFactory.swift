//
//  File.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 14/04/23.
//

import SpriteKit

class BarsFactoty: BoardElementsFactoryProtocol {
    let size: CGSize

    required init(size: CGSize) {
        self.size = size
    }
    
    func createNode() -> SKNode {
        let node = SKNode()
        let spacing = size.width / CGFloat(10)
        for i in 0..<11 {
            node.addChild(
                setupBar(positionX: spacing * CGFloat(i), width: size.width * 0.002, height: size.height)
            )
        }
        return node
    }

    private func setupBar(positionX: CGFloat, width: CGFloat = 1, height: CGFloat = 1000) -> SKShapeNode {
        let bar = SKShapeNode(rectOf: .init(width: width, height: height))
        bar.physicsBody = .init(rectangleOf: .init(width: width, height: height))
        bar.position = CGPoint(x: positionX, y: 0)
        bar.fillColor = UIColor(named: "Black")!
        bar.physicsBody?.affectedByGravity = false
        bar.physicsBody?.isDynamic = false
        bar.physicsBody?.allowsRotation = false
        return bar
    }
}


