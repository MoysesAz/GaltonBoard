//
//  File.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 14/04/23.
//

import SpriteKit

class MatrizFactory: BoardElementsFactoryProtocol {
    let size: CGSize

    required init(size: CGSize){
        self.size = size
    }

    func createNode() -> SKNode {
        let maxNails = 15
        let spaceBetweenBalls = size.width / CGFloat(maxNails + 1)

        let matrix = setupMatrix(circleOfRadius: size.width * 0.003,
                                 numberColuns: 5,
                                 maxNails: maxNails,
                                 positionY: size.height * 0.8,
                                 width: size.width,
                                 spaceBetweenLines: 0.05,
                                 spaceBetweenBalls: spaceBetweenBalls)
        return matrix
    }

    private func setupInLines(circleOfRadius: CGFloat, nails: Int, height: CGFloat, spaceBetweenBalls: CGFloat, margin: CGFloat) -> SKNode {
        let nodeLine = SKNode()
        for i in 0..<nails {
            let newNails = SKShapeNode(circleOfRadius: circleOfRadius)
            let ballPositionX = margin + (spaceBetweenBalls * CGFloat(i))
            newNails.position = CGPoint(x: ballPositionX, y: height)
            newNails.fillColor = UIColor(named: "Black")!
            newNails.physicsBody = .init(circleOfRadius: circleOfRadius)
            newNails.physicsBody?.affectedByGravity = false
            newNails.physicsBody?.isDynamic = false
            nodeLine.addChild(newNails)
        }
        return nodeLine
    }

    private func setupMatrix(circleOfRadius: CGFloat, numberColuns: Int, maxNails: Int, positionY: CGFloat, width: CGFloat, spaceBetweenLines: CGFloat, spaceBetweenBalls: CGFloat) -> SKNode {
        let node = SKNode()

        for i in 0...numberColuns {
            let spaceBetweenColuns = positionY - (positionY * spaceBetweenLines * CGFloat(i))
            if i.isEvenNumber() {
                node.addChild(
                    setupInLines(circleOfRadius: circleOfRadius, nails: maxNails, height: spaceBetweenColuns , spaceBetweenBalls: spaceBetweenBalls, margin: spaceBetweenBalls)
                )
            } else {
                node.addChild(
                    setupInLines(circleOfRadius: circleOfRadius, nails: maxNails - 1, height: spaceBetweenColuns, spaceBetweenBalls: spaceBetweenBalls, margin: spaceBetweenBalls * 1.5)
                )
            }
        }

        return node
    }

}
