//
//  MenuScene.swift
//  Stocks
//
//  Created by Todd Sutter on 9/13/16.
//  Copyright (c) 2016 toddsutter. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        let welcomeLabel = SKLabelNode(fontNamed: "Avenir Next Condensed DemiBold")
        welcomeLabel.text = "Welcome Jordan and Trevor. You did it!"
        welcomeLabel.fontColor = SKColor.whiteColor()
        welcomeLabel.fontSize = 40
        welcomeLabel.verticalAlignmentMode = .Center
        self.addChild(welcomeLabel)
        
        welcomeLabel.runAction(SKAction.repeatActionForever(SKAction.rotateByAngle(-2*π, duration: 20)))
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
