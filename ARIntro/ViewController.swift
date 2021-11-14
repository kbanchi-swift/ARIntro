//
//  ViewController.swift
//  ARIntro
//
//  Created by 伴地慶介 on 2021/11/12.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //shipのシーンを読み込んで生成してARSCNViewにセット
        sceneView.scene = SCNScene(named: "art.scnassets/ship/ship.scn")!
        
        //コンフィギュレーションを生成
        let configuration = ARWorldTrackingConfiguration()
        
        //セッションを開始
        sceneView.session.run(configuration)
    }


}

