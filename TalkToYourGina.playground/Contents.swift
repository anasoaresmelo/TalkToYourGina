//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .systemPink

        let label = UILabel()
        label.frame = CGRect(x: 60, y: 200, width: 2000, height: 20)
        label.text = "Hello, it's time to TalkToYourGina!"
        label.textColor = .white
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
