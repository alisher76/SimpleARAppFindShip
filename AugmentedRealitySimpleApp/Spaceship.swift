//
//  Spaceshipft.swift
//  AugmentedRealitySimpleApp
//
//  Created by Alisher Abdukarimov on 6/23/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import ARKit

class SpaceShip: SCNNode {
    
    func loadModel() {
        guard let virtualObjectScene = SCNScene(named: "art.scnassets/ship.scn") else {
            return
        }
        
        let wrapperNode = SCNNode()
        
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        
        self.addChildNode(wrapperNode)
    }
}
