//
//  GameController.swift
//  POCGameplaykitECS
//
//  Created by José João Silva Nunes Alves on 12/03/21.
//

import Foundation
import SpriteKit

class GameController {
    
    var handleUpdate: (()->())?

    var state: Int = 0 {
        didSet {
            handleUpdate?()
        }
    }

    func handleScene() -> SKScene {
        let scene = GamePlayScene()
        scene.delegatee = self
        return scene
    }
    
    func cenaNova() -> SKScene {
        let scene = SKScene()
        scene.backgroundColor = .red
        return scene
    }
}

extension GameController: Back {
    func backScene(_ scene: Int) {
        self.state = scene
    }
}

protocol Back: class {
    func backScene(_ scene: Int)
}
