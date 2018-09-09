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

        let path = UIBezierPath(ovalIn: skView.bounds.insetBy(dx: 10, dy: 10))
        node.run(.repeatForever(.follow(path.cgPath, asOffset: false, orientToPath: false, duration: 2.5)))

        let pulseAction = SKAction.repeatForever(
            .sequence([
                .scale(to: 2.0, duration: 1.0),
                .scale(to: 1.0, duration: 1.0)
            ])
        )

        node.run(pulseAction)

        self.skView.presentScene(scene)
    }

}
