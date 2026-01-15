//
//  GameViewController.swift
//  gameNotes
//
//  Created by JACKSON LISLE on 1/12/26.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    var play : GameScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                play = scene as? GameScene
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey:"orientation")
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    @IBAction func push(_ sender: Any) {
        play.reset()
    }
    
//    @IBAction func jump(_ sender: Any) {
//        play.jump()
//    }
    
    
    @IBAction func up(_ sender: Any) {
        play.up()
    }
    
    @IBAction func down(_ sender: Any) {
        play.down()
    }
}
