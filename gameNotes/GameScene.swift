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

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    
    override func didMove(to view: SKView) {
        physicsWorld.contactDelegate = self
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        self.camera = cam
    }
    
    override func update(_ currentTime: TimeInterval) {
        //cam.position = ball.position
        cam.position.x = ball.position.x
        cam.position.y = 300
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        if contact.bodyA.node?.name == "bad"{
            reset()
        }
        else if contact.bodyA.node?.name == "good"{
            print("horray!")
        }
    }
    
    func reset(){
        var respawn = SKAction.move(to: CGPoint(x:-496, y:35), duration: 0)
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
    
    func up(){
        var moveUp = SKAction.move(by: CGVector(dx: 0, dy: 40), duration: 0.5)
        ball.run(moveUp)
    }
        
    func down(){
        var moveDown = SKAction.move(by: CGVector(dx: 0, dy: -40), duration: 0.5)
        ball.run(moveDown)
    }
    
    
    
}
