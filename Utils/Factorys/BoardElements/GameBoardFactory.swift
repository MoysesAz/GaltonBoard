//
//  GameBoardFactory.swift
//  GaltonBoard
//
//  Created by Moyses Miranda do Vale Azevedo on 14/04/23.
//

import SpriteKit

class GameBoardFactory {
    let size: CGSize

    init (size: CGSize) {
        self.size = size
    }

    func createFactory(factory: GameBoardFactoryEnum) -> BoardElementsFactoryProtocol {
        switch factory {
        case .boarsFactory:
            return BarsFactoty(size: size)
        case .matrixFactory:
            return MatrizFactory(size: size)
        case .ballsFactory:
            return BallsFactory(size: size)
        }
    }
}
