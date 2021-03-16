//
//  GameViewController.swift
//  POCGameplaykitECS
//
//  Created by José João Silva Nunes Alves on 12/03/21.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    let gameController = GameController()
    let skView: SKView = SKView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setup()
        
       
    }
    private func setup() {
       
        gameController.handleUpdate = {
            let scene = self.gameController.cenaNova()
            scene.scaleMode = .aspectFill
            self.skView.presentScene(scene)
        }

        let scene = self.gameController.handleScene()
        scene.scaleMode = .aspectFill
      
        self.skView.presentScene(scene)
        self.view = self.skView
    }
}

//extension GameViewController: Back {
//    func backScene() {
//        print("ok")
//    }
//}
