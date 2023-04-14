//
//  File.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 14/04/23.
//

import SpriteKit

protocol BoardElementsFactoryProtocol {
    init (size: CGSize)
    var size: CGSize { get }
    func createNode() -> SKNode
}
