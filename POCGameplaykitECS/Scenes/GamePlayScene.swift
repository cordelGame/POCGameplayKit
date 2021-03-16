//
//  GamePlayScene.swift
//  POCGameplaykitECS
//
//  Created by José João Silva Nunes Alves on 12/03/21.
//

import SpriteKit
import UIKit

class GamePlayScene: SKScene {
    weak var delegatee: Back?
    
    let landscape: LandscapeEntity = LandscapeEntity()
    let character: CharacterEntity = CharacterEntity("personagem")
    let enemy: CharacterEntity = CharacterEntity("cobra")

    override func didMove(to view: SKView) {
        super.didMove(to: view)

        if let spriteComponent = landscape.component(ofType: VisualComponent.self) {
            spriteComponent.node.position = CGPoint(x: size.width * 0.5, y: size.height * 0.75)
            spriteComponent.node.size = CGSize(width: spriteComponent.node.size.width * 0.0015, height: size.height * 0.5)
            addChild(spriteComponent.node)
       }

        if let spriteComponent = character.component(ofType: VisualComponent.self) {
            spriteComponent.node.position = CGPoint(x: size.width * 0.35, y: size.height * 0.65)
            spriteComponent.node.size = CGSize(width: spriteComponent.node.size.width * 0.001, height: spriteComponent.node.size.height * 0.001)
            addChild(spriteComponent.node)
       }

        if let spriteComponent = enemy.component(ofType: VisualComponent.self) {
            spriteComponent.node.position = CGPoint(x: size.width * 0.6, y: size.height * 0.6)
            spriteComponent.node.size = CGSize(width: spriteComponent.node.size.width * 0.001, height: spriteComponent.node.size.height * 0.001)
            addChild(spriteComponent.node)
       }

    }
    override func sceneDidLoad() {
    }
}
