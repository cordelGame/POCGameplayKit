//
//  Character.swift
//  POCGameplaykitECS
//
//  Created by José João Silva Nunes Alves on 13/03/21.
//

import Foundation
import GameplayKit

class CharacterEntity: GKEntity {

    let visualComponent: VisualComponent!
    
    init(_ assetName: String) {
        visualComponent = VisualComponent(assetName: assetName)
        super.init()
        self.addComponent(self.visualComponent)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

