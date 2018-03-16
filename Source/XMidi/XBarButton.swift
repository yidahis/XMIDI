import Foundation
import SpriteKit

class XBarButton:SKSpriteNode {
    private var _title:String = ""
    var title:String{
        get {
            return _title
        }
        set {
            _title = newValue
            titleNode.text = _title
        }
    }
    
    var titleFontSize:CGFloat{
        get {
            return titleNode.fontSize
        }
        set {
            titleNode.fontSize = newValue
        }
    }
    
    var titleColor:UIColor{
        get {
            return titleNode.fontColor!
        }
        set {
            titleNode.fontColor = newValue
        }
    }
    
    typealias xClickEvent = () -> ()
    var xClick:xClickEvent?
    
    private var layouts:NSMutableArray!
    private var titleNode:SKLabelNode!
    private var colorAlphaDark = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.4)
    
    func initializer(postion:CGPoint,size:CGSize){
        isUserInteractionEnabled = true
        self.size = size
        self.position = postion
        
        titleNode = SKLabelNode(fontNamed:"System")
        titleNode.text = ""
        titleNode.fontSize = 25
        titleNode.fontColor = UIColor.white
        titleNode.position = CGPoint(x:0, y: 0)
        titleNode.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        self.addChild(titleNode)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (xClick != nil){
            self.xClick!()
        }
    }
    
}
