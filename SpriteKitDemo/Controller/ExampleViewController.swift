import SpriteKit
import UIKit

class ExampleViewController: UIViewController {

    @IBOutlet var skView: SKView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let scene = SKScene(size: skView.frame.size)
        scene.backgroundColor = .white

        let node = SKShapeNode(circleOfRadius: 5)
        node.fillColor = .red
        node.lineWidth = 0
        node.position = CGPoint(x: 0, y: 0)
        scene.addChild(node)

        self.skView.presentScene(scene)
    }

}
