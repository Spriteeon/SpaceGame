//
//  GameScene.swift
//  SpaceGame
//
//  Created by COWARD, MALACHI (Student) on 26/11/2020.
//  Copyright © 2020 COWARD, MALACHI (Student). All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var starfield:SKEmitterNode!
    var player:SKSpriteNode!
    
    override func didMove(to view: SKView) {
        
        starfield = SKEmitterNode(fileNamed: "Starfield")
        starfield.position = CGPoint(x: self.frame.midX, y: self.frame.size.height)
        starfield.advanceSimulationTime(10)
        self.addChild(starfield)
        
        starfield.zPosition = -1
        
        player = SKSpriteNode(imageNamed: "shuttle")
        player.position = CGPoint(x: self.frame.size.width / 2, y: player.size.height / 2 + 20)
        self.addChild(player)
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
