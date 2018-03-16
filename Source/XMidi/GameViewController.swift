//
//  GameViewController.swift
//  XMidi
//
//  Created by Lugia on 15/3/14.
//  Copyright (c) 2015年 Freedom. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var scene:MusicPlay = MusicPlay(size:self.view.frame.size)
        let skView = self.view as! SKView
        
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .aspectFill
        
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        skView.presentScene(scene)
    }
    override var shouldAutorotate: Bool{
        return true
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        if UIDevice.current.userInterfaceIdiom == .phone {
            return UIInterfaceOrientationMask.allButUpsideDown
        } else {
            return UIInterfaceOrientationMask.all
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
