//
//  GameScene.swift
//  gameNotes
//
//  Created by JACKSON LISLE on 1/12/26.
//

import SpriteKit
import GameplayKit

var ball : SKSpriteNode!
let cam = SKCameraNode()

class GameScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        self.camera = cam
    }
    
    override func update(_ currentTime: TimeInterval) {
        cam.position = ball.position
    }
    
    func reset(){
        var respawn = SKAction.move(to: CGPoint(x: CGFloat.random(in: -320...320), y: 640), duration: 0)
        ball.run(respawn)
    }
    
    func jump(){
        if ball.physicsBody?.velocity.dy == 0{
            //var burst = SKAction.move(by: CGVector(dx: 0, dy: 200), duration: 1)
           //ball.run(burst)
            ball.physicsBody?.velocity.dy = 20
        }
        else{return}
    }
        
    
    
    
}
